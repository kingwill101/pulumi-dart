import 'package:pulumi/pulumi.dart';
import '../connector_profile_connector_profile_config/connector_profile_connector_profile_config.dart';
import 'connector_profile_args.dart';

/// Provides an AppFlow connector profile resource.
///
/// For information about AppFlow flows, see the [Amazon AppFlow API Reference](https://docs.aws.amazon.com/appflow/1.0/APIReference/Welcome.html).
/// For specific information about creating an AppFlow connector profile, see the
/// [CreateConnectorProfile](https://docs.aws.amazon.com/appflow/1.0/APIReference/API_CreateConnectorProfile.html) page in the Amazon AppFlow API Reference.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicy({
/// name: "AmazonRedshiftAllCommandsFullAccess",
/// });
/// const exampleRole = new aws.iam.Role("example", {
/// name: "example_role",
/// managedPolicyArns: [test.arn],
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Sid: "",
/// Principal: {
/// Service: "ec2.amazonaws.com",
/// },
/// }],
/// }),
/// });
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example-bucket"});
/// const exampleCluster = new aws.redshift.Cluster("example", {
/// clusterIdentifier: "example_cluster",
/// databaseName: "example_db",
/// masterUsername: "exampleuser",
/// masterPassword: "examplePassword123!",
/// nodeType: "dc1.large",
/// clusterType: "single-node",
/// });
/// const exampleConnectorProfile = new aws.appflow.ConnectorProfile("example", {
/// name: "example_profile",
/// connectorType: "Redshift",
/// connectionMode: "Public",
/// connectorProfileConfig: {
/// connectorProfileCredentials: {
/// redshift: {
/// password: exampleCluster.masterPassword,
/// username: exampleCluster.masterUsername,
/// },
/// },
/// connectorProfileProperties: {
/// redshift: {
/// bucketName: exampleBucket.name,
/// databaseUrl: pulumi.interpolate`jdbc:redshift://${exampleCluster.endpoint}/${exampleCluster.databaseName}`,
/// roleArn: exampleRole.arn,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy(name="AmazonRedshiftAllCommandsFullAccess")
/// example_role = aws.iam.Role("example",
/// name="example_role",
/// managed_policy_arns=[test["arn"]],
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid": "",
/// "Principal": {
/// "Service": "ec2.amazonaws.com",
/// },
/// }],
/// }))
/// example_bucket = aws.s3.Bucket("example", bucket="example-bucket")
/// example_cluster = aws.redshift.Cluster("example",
/// cluster_identifier="example_cluster",
/// database_name="example_db",
/// master_username="exampleuser",
/// master_password="examplePassword123!",
/// node_type="dc1.large",
/// cluster_type="single-node")
/// example_connector_profile = aws.appflow.ConnectorProfile("example",
/// name="example_profile",
/// connector_type="Redshift",
/// connection_mode="Public",
/// connector_profile_config={
/// "connector_profile_credentials": {
/// "redshift": {
/// "password": example_cluster.master_password,
/// "username": example_cluster.master_username,
/// },
/// },
/// "connector_profile_properties": {
/// "redshift": {
/// "bucket_name": example_bucket.name,
/// "database_url": pulumi.Output.all(
/// endpoint=example_cluster.endpoint,
/// database_name=example_cluster.database_name
/// ).apply(lambda resolved_outputs: f"jdbc:redshift://{resolved_outputs['endpoint']}/{resolved_outputs['database_name']}")
/// ,
/// "role_arn": example_role.arn,
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Iam.GetPolicy.Invoke(new()
/// {
/// Name = "AmazonRedshiftAllCommandsFullAccess",
/// });
///
/// var exampleRole = new Aws.Iam.Role("example", new()
/// {
/// Name = "example_role",
/// ManagedPolicyArns = new[]
/// {
/// test.Arn,
/// },
/// AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = "sts:AssumeRole",
/// ["Effect"] = "Allow",
/// ["Sid"] = "",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "ec2.amazonaws.com",
/// },
/// },
/// },
/// }),
/// });
///
/// var exampleBucket = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example-bucket",
/// });
///
/// var exampleCluster = new Aws.RedShift.Cluster("example", new()
/// {
/// ClusterIdentifier = "example_cluster",
/// DatabaseName = "example_db",
/// MasterUsername = "exampleuser",
/// MasterPassword = "examplePassword123!",
/// NodeType = "dc1.large",
/// ClusterType = "single-node",
/// });
///
/// var exampleConnectorProfile = new Aws.AppFlow.ConnectorProfile("example", new()
/// {
/// Name = "example_profile",
/// ConnectorType = "Redshift",
/// ConnectionMode = "Public",
/// ConnectorProfileConfig = new Aws.AppFlow.Inputs.ConnectorProfileConnectorProfileConfigArgs
/// {
/// ConnectorProfileCredentials = new Aws.AppFlow.Inputs.ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsArgs
/// {
/// Redshift = new Aws.AppFlow.Inputs.ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshiftArgs
/// {
/// Password = exampleCluster.MasterPassword,
/// Username = exampleCluster.MasterUsername,
/// },
/// },
/// ConnectorProfileProperties = new Aws.AppFlow.Inputs.ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesArgs
/// {
/// Redshift = new Aws.AppFlow.Inputs.ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshiftArgs
/// {
/// BucketName = exampleBucket.Name,
/// DatabaseUrl = Output.Tuple(exampleCluster.Endpoint, exampleCluster.DatabaseName).Apply(values =>
/// {
/// var endpoint = values.Item1;
/// var databaseName = values.Item2;
/// return $"jdbc:redshift://{endpoint}/{databaseName}";
/// }),
/// RoleArn = exampleRole.Arn,
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appflow"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.LookupPolicy(ctx, &iam.LookupPolicyArgs{
/// Name: pulumi.StringRef("AmazonRedshiftAllCommandsFullAccess"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid":    "",
/// "Principal": map[string]interface{}{
/// "Service": "ec2.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name: pulumi.String("example_role"),
/// ManagedPolicyArns: pulumi.StringArray{
/// test.Arn,
/// },
/// AssumeRolePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("example-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleCluster, err := redshift.NewCluster(ctx, "example", &redshift.ClusterArgs{
/// ClusterIdentifier: pulumi.String("example_cluster"),
/// DatabaseName:      pulumi.String("example_db"),
/// MasterUsername:    pulumi.String("exampleuser"),
/// MasterPassword:    pulumi.String("examplePassword123!"),
/// NodeType:          pulumi.String("dc1.large"),
/// ClusterType:       pulumi.String("single-node"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = appflow.NewConnectorProfile(ctx, "example", &appflow.ConnectorProfileArgs{
/// Name:           pulumi.String("example_profile"),
/// ConnectorType:  pulumi.String("Redshift"),
/// ConnectionMode: pulumi.String("Public"),
/// ConnectorProfileConfig: &appflow.ConnectorProfileConnectorProfileConfigArgs{
/// ConnectorProfileCredentials: &appflow.ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsArgs{
/// Redshift: &appflow.ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshiftArgs{
/// Password: exampleCluster.MasterPassword,
/// Username: exampleCluster.MasterUsername,
/// },
/// },
/// ConnectorProfileProperties: &appflow.ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesArgs{
/// Redshift: &appflow.ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshiftArgs{
/// BucketName: exampleBucket.Name,
/// DatabaseUrl: pulumi.All(exampleCluster.Endpoint, exampleCluster.DatabaseName).ApplyT(func(_args []interface{}) (string, error) {
/// endpoint := _args[0].(string)
/// databaseName := _args[1].(string)
/// return fmt.Sprintf("jdbc:redshift://%v/%v", endpoint, databaseName), nil
/// }).(pulumi.StringOutput),
/// RoleArn: exampleRole.Arn,
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.redshift.Cluster;
/// import com.pulumi.aws.redshift.ClusterArgs;
/// import com.pulumi.aws.appflow.ConnectorProfile;
/// import com.pulumi.aws.appflow.ConnectorProfileArgs;
/// import com.pulumi.aws.appflow.inputs.ConnectorProfileConnectorProfileConfigArgs;
/// import com.pulumi.aws.appflow.inputs.ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsArgs;
/// import com.pulumi.aws.appflow.inputs.ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshiftArgs;
/// import com.pulumi.aws.appflow.inputs.ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesArgs;
/// import com.pulumi.aws.appflow.inputs.ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshiftArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = IamFunctions.getPolicy(GetPolicyArgs.builder()
/// .name("AmazonRedshiftAllCommandsFullAccess")
/// .build());
///
/// var exampleRole = new Role("exampleRole", RoleArgs.builder()
/// .name("example_role")
/// .managedPolicyArns(test.arn())
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Sid", ""),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "ec2.amazonaws.com")
/// ))
/// )))
/// )))
/// .build());
///
/// var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
/// .bucket("example-bucket")
/// .build());
///
/// var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
/// .clusterIdentifier("example_cluster")
/// .databaseName("example_db")
/// .masterUsername("exampleuser")
/// .masterPassword("examplePassword123!")
/// .nodeType("dc1.large")
/// .clusterType("single-node")
/// .build());
///
/// var exampleConnectorProfile = new ConnectorProfile("exampleConnectorProfile", ConnectorProfileArgs.builder()
/// .name("example_profile")
/// .connectorType("Redshift")
/// .connectionMode("Public")
/// .connectorProfileConfig(ConnectorProfileConnectorProfileConfigArgs.builder()
/// .connectorProfileCredentials(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsArgs.builder()
/// .redshift(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshiftArgs.builder()
/// .password(exampleCluster.masterPassword())
/// .username(exampleCluster.masterUsername())
/// .build())
/// .build())
/// .connectorProfileProperties(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesArgs.builder()
/// .redshift(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshiftArgs.builder()
/// .bucketName(exampleBucket.name())
/// .databaseUrl(Output.tuple(exampleCluster.endpoint(), exampleCluster.databaseName()).applyValue(values -> {
/// var endpoint = values.t1;
/// var databaseName = values.t2;
/// return String.format("jdbc:redshift://%s/%s", endpoint,databaseName);
/// }))
/// .roleArn(exampleRole.arn())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleRole:
/// type: aws:iam:Role
/// name: example
/// properties:
/// name: example_role
/// managedPolicyArns:
/// - ${test.arn}
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Sid: ""
/// Principal:
/// Service: ec2.amazonaws.com
/// exampleBucket:
/// type: aws:s3:Bucket
/// name: example
/// properties:
/// bucket: example-bucket
/// exampleCluster:
/// type: aws:redshift:Cluster
/// name: example
/// properties:
/// clusterIdentifier: example_cluster
/// databaseName: example_db
/// masterUsername: exampleuser
/// masterPassword: examplePassword123!
/// nodeType: dc1.large
/// clusterType: single-node
/// exampleConnectorProfile:
/// type: aws:appflow:ConnectorProfile
/// name: example
/// properties:
/// name: example_profile
/// connectorType: Redshift
/// connectionMode: Public
/// connectorProfileConfig:
/// connectorProfileCredentials:
/// redshift:
/// password: ${exampleCluster.masterPassword}
/// username: ${exampleCluster.masterUsername}
/// connectorProfileProperties:
/// redshift:
/// bucketName: ${exampleBucket.name}
/// databaseUrl: jdbc:redshift://${exampleCluster.endpoint}/${exampleCluster.databaseName}
/// roleArn: ${exampleRole.arn}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicy
/// arguments:
/// name: AmazonRedshiftAllCommandsFullAccess
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> (String) Name of the Appflow connector profile.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import AppFlow Connector Profile using the connector profile <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:appflow/connectorProfile:ConnectorProfile example example-profile
/// ```
///
/// [1]: https://docs.aws.amazon.com/appflow/1.0/APIReference/Welcome.html
/// [2]: https://docs.aws.amazon.com/appflow/1.0/APIReference/API_CreateConnectorProfile.html
class ConnectorProfile extends CustomResource {
  /// ARN of the connector profile.
  late final Output<String> arn;

  /// Indicates the connection mode and specifies whether it is public or private. Private flows use AWS PrivateLink to route data over AWS infrastructure without exposing it to the public internet. One of: `Public`, `Private`.
  late final Output<String> connectionMode;

  /// The label of the connector. The label is unique for each ConnectorRegistration in your AWS account. Only needed if calling for `CustomConnector` connector type.
  late final Output<String?> connectorLabel;

  /// Defines the connector-specific configuration and credentials. See Connector Profile Config for more details.
  late final Output<ConnectorProfileConnectorProfileConfig>
      connectorProfileConfig;

  /// The type of connector. One of: `Amplitude`, `CustomConnector`, `CustomerProfiles`, `Datadog`, `Dynatrace`, `EventBridge`, `Googleanalytics`, `Honeycode`, `Infornexus`, `LookoutMetrics`, `Marketo`, `Redshift`, `S3`, `Salesforce`, `SAPOData`, `Servicenow`, `Singular`, `Slack`, `Snowflake`, `Trendmicro`, `Upsolver`, `Veeva`, `Zendesk`.
  late final Output<String> connectorType;

  /// ARN of the connector profile credentials.
  late final Output<String> credentialsArn;

  /// ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  late final Output<String> kmsArn;
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// * `name ` (Required) - Name of the connector profile. The name is unique for each `ConnectorProfile` in your AWS account.
  late final Output<String> region;

  ConnectorProfile(
    String name, {
    ConnectorProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appflow/connectorProfile:ConnectorProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.connectionMode = registerOutput<String>('connectionMode');
    this.connectorLabel = registerOutput<String?>('connectorLabel');
    this.connectorProfileConfig =
        registerOutput<ConnectorProfileConnectorProfileConfig>(
            'connectorProfileConfig');
    this.connectorType = registerOutput<String>('connectorType');
    this.credentialsArn = registerOutput<String>('credentialsArn');
    this.kmsArn = registerOutput<String>('kmsArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
