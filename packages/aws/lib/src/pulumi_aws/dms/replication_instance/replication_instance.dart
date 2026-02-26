import 'package:pulumi/pulumi.dart';
import '../replication_instance_kerberos_authentication_settings/replication_instance_kerberos_authentication_settings.dart';
import 'replication_instance_args.dart';

/// Provides a DMS (Data Migration Service) replication instance resource. DMS replication instances can be created, updated, deleted, and imported.
///
/// ## Example Usage
///
/// Create required roles and then create a DMS instance, setting the<span pulumi-lang-nodejs=" dependsOn " pulumi-lang-dotnet=" DependsOn " pulumi-lang-go=" dependsOn " pulumi-lang-python=" depends_on " pulumi-lang-yaml=" dependsOn " pulumi-lang-java=" dependsOn "> depends_on </span>to the required role policy attachments.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Database Migration Service requires the below IAM Roles to be created before
/// // replication instances can be created. See the DMS Documentation for
/// // additional information: https://docs.aws.amazon.com/dms/latest/userguide/security-iam.html#CHAP_Security.APIRole
/// //  * dms-vpc-role
/// //  * dms-cloudwatch-logs-role
/// //  * dms-access-for-endpoint
/// const dmsAssumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// actions: ["sts:AssumeRole"],
/// principals: [{
/// identifiers: ["dms.amazonaws.com"],
/// type: "Service",
/// }],
/// }],
/// });
/// const dms_access_for_endpoint = new aws.iam.Role("dms-access-for-endpoint", {
/// assumeRolePolicy: dmsAssumeRole.then(dmsAssumeRole => dmsAssumeRole.json),
/// name: "dms-access-for-endpoint",
/// });
/// const dms_access_for_endpoint_AmazonDMSRedshiftS3Role = new aws.iam.RolePolicyAttachment("dms-access-for-endpoint-AmazonDMSRedshiftS3Role", {
/// policyArn: "arn:aws:iam::aws:policy/service-role/AmazonDMSRedshiftS3Role",
/// role: dms_access_for_endpoint.name,
/// });
/// const dms_cloudwatch_logs_role = new aws.iam.Role("dms-cloudwatch-logs-role", {
/// assumeRolePolicy: dmsAssumeRole.then(dmsAssumeRole => dmsAssumeRole.json),
/// name: "dms-cloudwatch-logs-role",
/// });
/// const dms_cloudwatch_logs_role_AmazonDMSCloudWatchLogsRole = new aws.iam.RolePolicyAttachment("dms-cloudwatch-logs-role-AmazonDMSCloudWatchLogsRole", {
/// policyArn: "arn:aws:iam::aws:policy/service-role/AmazonDMSCloudWatchLogsRole",
/// role: dms_cloudwatch_logs_role.name,
/// });
/// const dms_vpc_role = new aws.iam.Role("dms-vpc-role", {
/// assumeRolePolicy: dmsAssumeRole.then(dmsAssumeRole => dmsAssumeRole.json),
/// name: "dms-vpc-role",
/// });
/// const dms_vpc_role_AmazonDMSVPCManagementRole = new aws.iam.RolePolicyAttachment("dms-vpc-role-AmazonDMSVPCManagementRole", {
/// policyArn: "arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole",
/// role: dms_vpc_role.name,
/// });
/// // Create a new replication instance
/// const test = new aws.dms.ReplicationInstance("test", {
/// allocatedStorage: 20,
/// applyImmediately: true,
/// autoMinorVersionUpgrade: true,
/// availabilityZone: "us-west-2c",
/// engineVersion: "3.1.4",
/// kmsKeyArn: "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
/// multiAz: false,
/// preferredMaintenanceWindow: "sun:10:30-sun:14:30",
/// publiclyAccessible: true,
/// replicationInstanceClass: "dms.t3.micro",
/// replicationInstanceId: "test-dms-replication-instance-tf",
/// replicationSubnetGroupId: test_dms_replication_subnet_group_tf.id,
/// tags: {
/// Name: "test",
/// },
/// vpcSecurityGroupIds: ["sg-12345678"],
/// }, {
/// dependsOn: [
/// dms_access_for_endpoint_AmazonDMSRedshiftS3Role,
/// dms_cloudwatch_logs_role_AmazonDMSCloudWatchLogsRole,
/// dms_vpc_role_AmazonDMSVPCManagementRole,
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Database Migration Service requires the below IAM Roles to be created before
/// # replication instances can be created. See the DMS Documentation for
/// # additional information: https://docs.aws.amazon.com/dms/latest/userguide/security-iam.html#CHAP_Security.APIRole
/// #  * dms-vpc-role
/// #  * dms-cloudwatch-logs-role
/// #  * dms-access-for-endpoint
/// dms_assume_role = aws.iam.get_policy_document(statements=[{
/// "actions": ["sts:AssumeRole"],
/// "principals": [{
/// "identifiers": ["dms.amazonaws.com"],
/// "type": "Service",
/// }],
/// }])
/// dms_access_for_endpoint = aws.iam.Role("dms-access-for-endpoint",
/// assume_role_policy=dms_assume_role.json,
/// name="dms-access-for-endpoint")
/// dms_access_for_endpoint__amazon_dms_redshift_s3_role = aws.iam.RolePolicyAttachment("dms-access-for-endpoint-AmazonDMSRedshiftS3Role",
/// policy_arn="arn:aws:iam::aws:policy/service-role/AmazonDMSRedshiftS3Role",
/// role=dms_access_for_endpoint.name)
/// dms_cloudwatch_logs_role = aws.iam.Role("dms-cloudwatch-logs-role",
/// assume_role_policy=dms_assume_role.json,
/// name="dms-cloudwatch-logs-role")
/// dms_cloudwatch_logs_role__amazon_dms_cloud_watch_logs_role = aws.iam.RolePolicyAttachment("dms-cloudwatch-logs-role-AmazonDMSCloudWatchLogsRole",
/// policy_arn="arn:aws:iam::aws:policy/service-role/AmazonDMSCloudWatchLogsRole",
/// role=dms_cloudwatch_logs_role.name)
/// dms_vpc_role = aws.iam.Role("dms-vpc-role",
/// assume_role_policy=dms_assume_role.json,
/// name="dms-vpc-role")
/// dms_vpc_role__amazon_dmsvpc_management_role = aws.iam.RolePolicyAttachment("dms-vpc-role-AmazonDMSVPCManagementRole",
/// policy_arn="arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole",
/// role=dms_vpc_role.name)
/// # Create a new replication instance
/// test = aws.dms.ReplicationInstance("test",
/// allocated_storage=20,
/// apply_immediately=True,
/// auto_minor_version_upgrade=True,
/// availability_zone="us-west-2c",
/// engine_version="3.1.4",
/// kms_key_arn="arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
/// multi_az=False,
/// preferred_maintenance_window="sun:10:30-sun:14:30",
/// publicly_accessible=True,
/// replication_instance_class="dms.t3.micro",
/// replication_instance_id="test-dms-replication-instance-tf",
/// replication_subnet_group_id=test_dms_replication_subnet_group_tf["id"],
/// tags={
/// "Name": "test",
/// },
/// vpc_security_group_ids=["sg-12345678"],
/// opts = pulumi.ResourceOptions(depends_on=[
/// dms_access_for_endpoint__amazon_dms_redshift_s3_role,
/// dms_cloudwatch_logs_role__amazon_dms_cloud_watch_logs_role,
/// dms_vpc_role__amazon_dmsvpc_management_role,
/// ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Database Migration Service requires the below IAM Roles to be created before
/// // replication instances can be created. See the DMS Documentation for
/// // additional information: https://docs.aws.amazon.com/dms/latest/userguide/security-iam.html#CHAP_Security.APIRole
/// //  * dms-vpc-role
/// //  * dms-cloudwatch-logs-role
/// //  * dms-access-for-endpoint
/// var dmsAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Identifiers = new[]
/// {
/// "dms.amazonaws.com",
/// },
/// Type = "Service",
/// },
/// },
/// },
/// },
/// });
///
/// var dms_access_for_endpoint = new Aws.Iam.Role("dms-access-for-endpoint", new()
/// {
/// AssumeRolePolicy = dmsAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// Name = "dms-access-for-endpoint",
/// });
///
/// var dms_access_for_endpoint_AmazonDMSRedshiftS3Role = new Aws.Iam.RolePolicyAttachment("dms-access-for-endpoint-AmazonDMSRedshiftS3Role", new()
/// {
/// PolicyArn = "arn:aws:iam::aws:policy/service-role/AmazonDMSRedshiftS3Role",
/// Role = dms_access_for_endpoint.Name,
/// });
///
/// var dms_cloudwatch_logs_role = new Aws.Iam.Role("dms-cloudwatch-logs-role", new()
/// {
/// AssumeRolePolicy = dmsAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// Name = "dms-cloudwatch-logs-role",
/// });
///
/// var dms_cloudwatch_logs_role_AmazonDMSCloudWatchLogsRole = new Aws.Iam.RolePolicyAttachment("dms-cloudwatch-logs-role-AmazonDMSCloudWatchLogsRole", new()
/// {
/// PolicyArn = "arn:aws:iam::aws:policy/service-role/AmazonDMSCloudWatchLogsRole",
/// Role = dms_cloudwatch_logs_role.Name,
/// });
///
/// var dms_vpc_role = new Aws.Iam.Role("dms-vpc-role", new()
/// {
/// AssumeRolePolicy = dmsAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// Name = "dms-vpc-role",
/// });
///
/// var dms_vpc_role_AmazonDMSVPCManagementRole = new Aws.Iam.RolePolicyAttachment("dms-vpc-role-AmazonDMSVPCManagementRole", new()
/// {
/// PolicyArn = "arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole",
/// Role = dms_vpc_role.Name,
/// });
///
/// // Create a new replication instance
/// var test = new Aws.Dms.ReplicationInstance("test", new()
/// {
/// AllocatedStorage = 20,
/// ApplyImmediately = true,
/// AutoMinorVersionUpgrade = true,
/// AvailabilityZone = "us-west-2c",
/// EngineVersion = "3.1.4",
/// KmsKeyArn = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
/// MultiAz = false,
/// PreferredMaintenanceWindow = "sun:10:30-sun:14:30",
/// PubliclyAccessible = true,
/// ReplicationInstanceClass = "dms.t3.micro",
/// ReplicationInstanceId = "test-dms-replication-instance-tf",
/// ReplicationSubnetGroupId = test_dms_replication_subnet_group_tf.Id,
/// Tags =
/// {
/// { "Name", "test" },
/// },
/// VpcSecurityGroupIds = new[]
/// {
/// "sg-12345678",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// dms_access_for_endpoint_AmazonDMSRedshiftS3Role,
/// dms_cloudwatch_logs_role_AmazonDMSCloudWatchLogsRole,
/// dms_vpc_role_AmazonDMSVPCManagementRole,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Database Migration Service requires the below IAM Roles to be created before
/// // replication instances can be created. See the DMS Documentation for
/// // additional information: https://docs.aws.amazon.com/dms/latest/userguide/security-iam.html#CHAP_Security.APIRole
/// //   - dms-vpc-role
/// //   - dms-cloudwatch-logs-role
/// //   - dms-access-for-endpoint
/// dmsAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Identifiers: []string{
/// "dms.amazonaws.com",
/// },
/// Type: "Service",
/// },
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// dms_access_for_endpoint, err := iam.NewRole(ctx, "dms-access-for-endpoint", &iam.RoleArgs{
/// AssumeRolePolicy: pulumi.String(dmsAssumeRole.Json),
/// Name:             pulumi.String("dms-access-for-endpoint"),
/// })
/// if err != nil {
/// return err
/// }
/// dms_access_for_endpoint_AmazonDMSRedshiftS3Role, err := iam.NewRolePolicyAttachment(ctx, "dms-access-for-endpoint-AmazonDMSRedshiftS3Role", &iam.RolePolicyAttachmentArgs{
/// PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AmazonDMSRedshiftS3Role"),
/// Role:      dms_access_for_endpoint.Name,
/// })
/// if err != nil {
/// return err
/// }
/// dms_cloudwatch_logs_role, err := iam.NewRole(ctx, "dms-cloudwatch-logs-role", &iam.RoleArgs{
/// AssumeRolePolicy: pulumi.String(dmsAssumeRole.Json),
/// Name:             pulumi.String("dms-cloudwatch-logs-role"),
/// })
/// if err != nil {
/// return err
/// }
/// dms_cloudwatch_logs_role_AmazonDMSCloudWatchLogsRole, err := iam.NewRolePolicyAttachment(ctx, "dms-cloudwatch-logs-role-AmazonDMSCloudWatchLogsRole", &iam.RolePolicyAttachmentArgs{
/// PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AmazonDMSCloudWatchLogsRole"),
/// Role:      dms_cloudwatch_logs_role.Name,
/// })
/// if err != nil {
/// return err
/// }
/// dms_vpc_role, err := iam.NewRole(ctx, "dms-vpc-role", &iam.RoleArgs{
/// AssumeRolePolicy: pulumi.String(dmsAssumeRole.Json),
/// Name:             pulumi.String("dms-vpc-role"),
/// })
/// if err != nil {
/// return err
/// }
/// dms_vpc_role_AmazonDMSVPCManagementRole, err := iam.NewRolePolicyAttachment(ctx, "dms-vpc-role-AmazonDMSVPCManagementRole", &iam.RolePolicyAttachmentArgs{
/// PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole"),
/// Role:      dms_vpc_role.Name,
/// })
/// if err != nil {
/// return err
/// }
/// // Create a new replication instance
/// _, err = dms.NewReplicationInstance(ctx, "test", &dms.ReplicationInstanceArgs{
/// AllocatedStorage:           pulumi.Int(20),
/// ApplyImmediately:           pulumi.Bool(true),
/// AutoMinorVersionUpgrade:    pulumi.Bool(true),
/// AvailabilityZone:           pulumi.String("us-west-2c"),
/// EngineVersion:              pulumi.String("3.1.4"),
/// KmsKeyArn:                  pulumi.String("arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"),
/// MultiAz:                    pulumi.Bool(false),
/// PreferredMaintenanceWindow: pulumi.String("sun:10:30-sun:14:30"),
/// PubliclyAccessible:         pulumi.Bool(true),
/// ReplicationInstanceClass:   pulumi.String("dms.t3.micro"),
/// ReplicationInstanceId:      pulumi.String("test-dms-replication-instance-tf"),
/// ReplicationSubnetGroupId:   pulumi.Any(test_dms_replication_subnet_group_tf.Id),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("test"),
/// },
/// VpcSecurityGroupIds: pulumi.StringArray{
/// pulumi.String("sg-12345678"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// dms_access_for_endpoint_AmazonDMSRedshiftS3Role,
/// dms_cloudwatch_logs_role_AmazonDMSCloudWatchLogsRole,
/// dms_vpc_role_AmazonDMSVPCManagementRole,
/// }))
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.dms.ReplicationInstance;
/// import com.pulumi.aws.dms.ReplicationInstanceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// // Database Migration Service requires the below IAM Roles to be created before
/// // replication instances can be created. See the DMS Documentation for
/// // additional information: https://docs.aws.amazon.com/dms/latest/userguide/security-iam.html#CHAP_Security.APIRole
/// //  * dms-vpc-role
/// //  * dms-cloudwatch-logs-role
/// //  * dms-access-for-endpoint
/// final var dmsAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("sts:AssumeRole")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .identifiers("dms.amazonaws.com")
/// .type("Service")
/// .build())
/// .build())
/// .build());
///
/// var dms_access_for_endpoint = new Role("dms-access-for-endpoint", RoleArgs.builder()
/// .assumeRolePolicy(dmsAssumeRole.json())
/// .name("dms-access-for-endpoint")
/// .build());
///
/// var dms_access_for_endpoint_AmazonDMSRedshiftS3Role = new RolePolicyAttachment("dms-access-for-endpoint-AmazonDMSRedshiftS3Role", RolePolicyAttachmentArgs.builder()
/// .policyArn("arn:aws:iam::aws:policy/service-role/AmazonDMSRedshiftS3Role")
/// .role(dms_access_for_endpoint.name())
/// .build());
///
/// var dms_cloudwatch_logs_role = new Role("dms-cloudwatch-logs-role", RoleArgs.builder()
/// .assumeRolePolicy(dmsAssumeRole.json())
/// .name("dms-cloudwatch-logs-role")
/// .build());
///
/// var dms_cloudwatch_logs_role_AmazonDMSCloudWatchLogsRole = new RolePolicyAttachment("dms-cloudwatch-logs-role-AmazonDMSCloudWatchLogsRole", RolePolicyAttachmentArgs.builder()
/// .policyArn("arn:aws:iam::aws:policy/service-role/AmazonDMSCloudWatchLogsRole")
/// .role(dms_cloudwatch_logs_role.name())
/// .build());
///
/// var dms_vpc_role = new Role("dms-vpc-role", RoleArgs.builder()
/// .assumeRolePolicy(dmsAssumeRole.json())
/// .name("dms-vpc-role")
/// .build());
///
/// var dms_vpc_role_AmazonDMSVPCManagementRole = new RolePolicyAttachment("dms-vpc-role-AmazonDMSVPCManagementRole", RolePolicyAttachmentArgs.builder()
/// .policyArn("arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole")
/// .role(dms_vpc_role.name())
/// .build());
///
/// // Create a new replication instance
/// var test = new ReplicationInstance("test", ReplicationInstanceArgs.builder()
/// .allocatedStorage(20)
/// .applyImmediately(true)
/// .autoMinorVersionUpgrade(true)
/// .availabilityZone("us-west-2c")
/// .engineVersion("3.1.4")
/// .kmsKeyArn("arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012")
/// .multiAz(false)
/// .preferredMaintenanceWindow("sun:10:30-sun:14:30")
/// .publiclyAccessible(true)
/// .replicationInstanceClass("dms.t3.micro")
/// .replicationInstanceId("test-dms-replication-instance-tf")
/// .replicationSubnetGroupId(test_dms_replication_subnet_group_tf.id())
/// .tags(Map.of("Name", "test"))
/// .vpcSecurityGroupIds("sg-12345678")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(
/// dms_access_for_endpoint_AmazonDMSRedshiftS3Role,
/// dms_cloudwatch_logs_role_AmazonDMSCloudWatchLogsRole,
/// dms_vpc_role_AmazonDMSVPCManagementRole)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dms-access-for-endpoint:
/// type: aws:iam:Role
/// properties:
/// assumeRolePolicy: ${dmsAssumeRole.json}
/// name: dms-access-for-endpoint
/// dms-access-for-endpoint-AmazonDMSRedshiftS3Role:
/// type: aws:iam:RolePolicyAttachment
/// properties:
/// policyArn: arn:aws:iam::aws:policy/service-role/AmazonDMSRedshiftS3Role
/// role: ${["dms-access-for-endpoint"].name}
/// dms-cloudwatch-logs-role:
/// type: aws:iam:Role
/// properties:
/// assumeRolePolicy: ${dmsAssumeRole.json}
/// name: dms-cloudwatch-logs-role
/// dms-cloudwatch-logs-role-AmazonDMSCloudWatchLogsRole:
/// type: aws:iam:RolePolicyAttachment
/// properties:
/// policyArn: arn:aws:iam::aws:policy/service-role/AmazonDMSCloudWatchLogsRole
/// role: ${["dms-cloudwatch-logs-role"].name}
/// dms-vpc-role:
/// type: aws:iam:Role
/// properties:
/// assumeRolePolicy: ${dmsAssumeRole.json}
/// name: dms-vpc-role
/// dms-vpc-role-AmazonDMSVPCManagementRole:
/// type: aws:iam:RolePolicyAttachment
/// properties:
/// policyArn: arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole
/// role: ${["dms-vpc-role"].name}
/// # Create a new replication instance
/// test:
/// type: aws:dms:ReplicationInstance
/// properties:
/// allocatedStorage: 20
/// applyImmediately: true
/// autoMinorVersionUpgrade: true
/// availabilityZone: us-west-2c
/// engineVersion: 3.1.4
/// kmsKeyArn: arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
/// multiAz: false
/// preferredMaintenanceWindow: sun:10:30-sun:14:30
/// publiclyAccessible: true
/// replicationInstanceClass: dms.t3.micro
/// replicationInstanceId: test-dms-replication-instance-tf
/// replicationSubnetGroupId: ${["test-dms-replication-subnet-group-tf"].id}
/// tags:
/// Name: test
/// vpcSecurityGroupIds:
/// - sg-12345678
/// options:
/// dependsOn:
/// - ${["dms-access-for-endpoint-AmazonDMSRedshiftS3Role"]}
/// - ${["dms-cloudwatch-logs-role-AmazonDMSCloudWatchLogsRole"]}
/// - ${["dms-vpc-role-AmazonDMSVPCManagementRole"]}
/// variables:
/// # Database Migration Service requires the below IAM Roles to be created before
/// # replication instances can be created. See the DMS Documentation for
/// # additional information: https://docs.aws.amazon.com/dms/latest/userguide/security-iam.html#CHAP_Security.APIRole
/// #  * dms-vpc-role
/// #  * dms-cloudwatch-logs-role
/// #  * dms-access-for-endpoint
/// dmsAssumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - sts:AssumeRole
/// principals:
/// - identifiers:
/// - dms.amazonaws.com
/// type: Service
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import replication instances using the <span pulumi-lang-nodejs="`replicationInstanceId`" pulumi-lang-dotnet="`ReplicationInstanceId`" pulumi-lang-go="`replicationInstanceId`" pulumi-lang-python="`replication_instance_id`" pulumi-lang-yaml="`replicationInstanceId`" pulumi-lang-java="`replicationInstanceId`">`replication_instance_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dms/replicationInstance:ReplicationInstance test test-dms-replication-instance-tf
/// ```
class ReplicationInstance extends CustomResource {
  /// The amount of storage (in gigabytes) to be initially allocated for the replication instance.
  late final Output<int> allocatedStorage;

  /// Indicates that major version upgrades are allowed.
  late final Output<bool?> allowMajorVersionUpgrade;

  /// Indicates whether the changes should be applied immediately or during the next maintenance window. Only used when updating an existing resource.
  late final Output<bool?> applyImmediately;

  /// Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.
  late final Output<bool> autoMinorVersionUpgrade;

  /// The EC2 Availability Zone that the replication instance will be created in.
  late final Output<String> availabilityZone;

  /// A list of custom DNS name servers supported for the replication instance to access your on-premise source or target database. This list overrides the default name servers supported by the replication instance. You can specify a comma-separated list of internet addresses for up to four on-premise DNS name servers.
  late final Output<String?> dnsNameServers;

  /// The engine version number of the replication instance.
  late final Output<String> engineVersion;

  /// Configuration block for settings required for Kerberos authentication. See below.
  late final Output<ReplicationInstanceKerberosAuthenticationSettings?>
      kerberosAuthenticationSettings;

  /// The Amazon Resource Name (ARN) for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for <span pulumi-lang-nodejs="`kmsKeyArn`" pulumi-lang-dotnet="`KmsKeyArn`" pulumi-lang-go="`kmsKeyArn`" pulumi-lang-python="`kms_key_arn`" pulumi-lang-yaml="`kmsKeyArn`" pulumi-lang-java="`kmsKeyArn`">`kms_key_arn`</span>, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.
  late final Output<String> kmsKeyArn;

  /// Specifies if the replication instance is a multi-az deployment. You cannot set the <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span> parameter if the <span pulumi-lang-nodejs="`multiAz`" pulumi-lang-dotnet="`MultiAz`" pulumi-lang-go="`multiAz`" pulumi-lang-python="`multi_az`" pulumi-lang-yaml="`multiAz`" pulumi-lang-java="`multiAz`">`multi_az`</span> parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> multiAz;

  /// The type of IP address protocol used by a replication instance. Valid values: `IPV4`, `DUAL`.
  late final Output<String> networkType;

  /// The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
  late final Output<String> preferredMaintenanceWindow;

  /// Specifies the accessibility options for the replication instance. A value of true represents an instance with a public IP address. A value of false represents an instance with a private IP address.
  late final Output<bool> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the replication instance.
  late final Output<String> replicationInstanceArn;

  /// The compute and memory capacity of the replication instance as specified by the replication instance class. See [AWS DMS User Guide](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html) for available instance sizes and advice on which one to choose.
  late final Output<String> replicationInstanceClass;

  /// The replication instance identifier. This parameter is stored as a lowercase string.
  late final Output<String> replicationInstanceId;

  /// A list of the private IP addresses of the replication instance.
  late final Output<List<String>> replicationInstancePrivateIps;

  /// A list of the public IP addresses of the replication instance.
  late final Output<List<String>> replicationInstancePublicIps;

  /// A subnet group to associate with the replication instance.
  late final Output<String> replicationSubnetGroupId;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A list of VPC security group IDs to be used with the replication instance. The VPC security groups must work with the VPC containing the replication instance.
  late final Output<List<String>> vpcSecurityGroupIds;

  ReplicationInstance(
    String name, {
    ReplicationInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dms/replicationInstance:ReplicationInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocatedStorage = Output.createUnknown<int>();
    this.allowMajorVersionUpgrade = Output.createUnknown<bool?>();
    this.applyImmediately = Output.createUnknown<bool?>();
    this.autoMinorVersionUpgrade = Output.createUnknown<bool>();
    this.availabilityZone = Output.createUnknown<String>();
    this.dnsNameServers = Output.createUnknown<String?>();
    this.engineVersion = Output.createUnknown<String>();
    this.kerberosAuthenticationSettings = Output.createUnknown<
        ReplicationInstanceKerberosAuthenticationSettings?>();
    this.kmsKeyArn = Output.createUnknown<String>();
    this.multiAz = Output.createUnknown<bool>();
    this.networkType = Output.createUnknown<String>();
    this.preferredMaintenanceWindow = Output.createUnknown<String>();
    this.publiclyAccessible = Output.createUnknown<bool>();
    this.region = Output.createUnknown<String>();
    this.replicationInstanceArn = Output.createUnknown<String>();
    this.replicationInstanceClass = Output.createUnknown<String>();
    this.replicationInstanceId = Output.createUnknown<String>();
    this.replicationInstancePrivateIps = Output.createUnknown<List<String>>();
    this.replicationInstancePublicIps = Output.createUnknown<List<String>>();
    this.replicationSubnetGroupId = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcSecurityGroupIds = Output.createUnknown<List<String>>();
  }
}
