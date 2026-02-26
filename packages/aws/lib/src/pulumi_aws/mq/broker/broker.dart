import 'package:pulumi/pulumi.dart';
import '../broker_configuration/broker_configuration.dart';
import '../broker_encryption_options/broker_encryption_options.dart';
import '../broker_instance/broker_instance.dart';
import '../broker_ldap_server_metadata/broker_ldap_server_metadata.dart';
import '../broker_logs/broker_logs.dart';
import '../broker_maintenance_window_start_time/broker_maintenance_window_start_time.dart';
import '../broker_user/broker_user.dart';
import 'broker_args.dart';

/// Manages an AWS MQ broker. Use to create and manage message brokers for ActiveMQ and RabbitMQ engines.
///
/// > For more information on Amazon MQ, see [Amazon MQ documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/welcome.html).
///
/// > **Note:** For RabbitMQ brokers, only one administrative user can be created during provisioning. Additional users must be created via the [RabbitMQ Management API](https://www.rabbitmq.com/management.html) or the Amazon MQ console after the broker is provisioned. Terraform cannot update or manage users after broker creation. Any changes to the <span pulumi-lang-nodejs="`user`" pulumi-lang-dotnet="`User`" pulumi-lang-go="`user`" pulumi-lang-python="`user`" pulumi-lang-yaml="`user`" pulumi-lang-java="`user`">`user`</span> block will trigger full broker recreation. Amazon MQ does not return RabbitMQ user information via APIs, meaning drift of the <span pulumi-lang-nodejs="`user`" pulumi-lang-dotnet="`User`" pulumi-lang-go="`user`" pulumi-lang-python="`user`" pulumi-lang-yaml="`user`" pulumi-lang-java="`user`">`user`</span> attribute can not be detected.
///
/// !> **Warning:** Amazon MQ currently places limits on **RabbitMQ** brokers. For example, a RabbitMQ broker cannot have: instances with an associated IP address of an ENI attached to the broker, an associated LDAP server to authenticate and authorize broker connections, storage type `EFS`, or audit logging. Although this resource allows you to create RabbitMQ users, RabbitMQ users cannot have console access or groups.
///
/// !> **Warning:** All arguments including the username and password will be stored in the raw state as plain-text. > **Note:** Changes to an MQ Broker can occur when you change a parameter, such as <span pulumi-lang-nodejs="`configuration`" pulumi-lang-dotnet="`Configuration`" pulumi-lang-go="`configuration`" pulumi-lang-python="`configuration`" pulumi-lang-yaml="`configuration`" pulumi-lang-java="`configuration`">`configuration`</span> or <span pulumi-lang-nodejs="`user`" pulumi-lang-dotnet="`User`" pulumi-lang-go="`user`" pulumi-lang-python="`user`" pulumi-lang-yaml="`user`" pulumi-lang-java="`user`">`user`</span>, and are reflected in the next maintenance window. Because of this, Terraform may report a difference in its planning phase because a modification has not yet taken place. You can use the <span pulumi-lang-nodejs="`applyImmediately`" pulumi-lang-dotnet="`ApplyImmediately`" pulumi-lang-go="`applyImmediately`" pulumi-lang-python="`apply_immediately`" pulumi-lang-yaml="`applyImmediately`" pulumi-lang-java="`applyImmediately`">`apply_immediately`</span> flag to instruct the service to apply the change immediately (see documentation below). Using <span pulumi-lang-nodejs="`applyImmediately`" pulumi-lang-dotnet="`ApplyImmediately`" pulumi-lang-go="`applyImmediately`" pulumi-lang-python="`apply_immediately`" pulumi-lang-yaml="`applyImmediately`" pulumi-lang-java="`applyImmediately`">`apply_immediately`</span> can result in a brief downtime as the broker reboots.
///
/// ## Example Usage
///
/// ### Basic Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mq.Broker("example", {
/// brokerName: "example",
/// configuration: {
/// id: test.id,
/// revision: test.latestRevision,
/// },
/// engineType: "ActiveMQ",
/// engineVersion: "5.17.6",
/// hostInstanceType: "mq.t2.micro",
/// securityGroups: [testAwsSecurityGroup.id],
/// users: [{
/// username: "example_user",
/// password: "<password>",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mq.Broker("example",
/// broker_name="example",
/// configuration={
/// "id": test["id"],
/// "revision": test["latestRevision"],
/// },
/// engine_type="ActiveMQ",
/// engine_version="5.17.6",
/// host_instance_type="mq.t2.micro",
/// security_groups=[test_aws_security_group["id"]],
/// users=[{
/// "username": "example_user",
/// "password": "<password>",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Mq.Broker("example", new()
/// {
/// BrokerName = "example",
/// Configuration = new Aws.Mq.Inputs.BrokerConfigurationArgs
/// {
/// Id = test.Id,
/// Revision = test.LatestRevision,
/// },
/// EngineType = "ActiveMQ",
/// EngineVersion = "5.17.6",
/// HostInstanceType = "mq.t2.micro",
/// SecurityGroups = new[]
/// {
/// testAwsSecurityGroup.Id,
/// },
/// Users = new[]
/// {
/// new Aws.Mq.Inputs.BrokerUserArgs
/// {
/// Username = "example_user",
/// Password = "<password>",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mq"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := mq.NewBroker(ctx, "example", &mq.BrokerArgs{
/// BrokerName: pulumi.String("example"),
/// Configuration: &mq.BrokerConfigurationArgs{
/// Id:       pulumi.Any(test.Id),
/// Revision: pulumi.Any(test.LatestRevision),
/// },
/// EngineType:       pulumi.String("ActiveMQ"),
/// EngineVersion:    pulumi.String("5.17.6"),
/// HostInstanceType: pulumi.String("mq.t2.micro"),
/// SecurityGroups: pulumi.StringArray{
/// testAwsSecurityGroup.Id,
/// },
/// Users: mq.BrokerUserArray{
/// &mq.BrokerUserArgs{
/// Username: pulumi.String("example_user"),
/// Password: pulumi.String("<password>"),
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
/// import com.pulumi.aws.mq.Broker;
/// import com.pulumi.aws.mq.BrokerArgs;
/// import com.pulumi.aws.mq.inputs.BrokerConfigurationArgs;
/// import com.pulumi.aws.mq.inputs.BrokerUserArgs;
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
/// var example = new Broker("example", BrokerArgs.builder()
/// .brokerName("example")
/// .configuration(BrokerConfigurationArgs.builder()
/// .id(test.id())
/// .revision(test.latestRevision())
/// .build())
/// .engineType("ActiveMQ")
/// .engineVersion("5.17.6")
/// .hostInstanceType("mq.t2.micro")
/// .securityGroups(testAwsSecurityGroup.id())
/// .users(BrokerUserArgs.builder()
/// .username("example_user")
/// .password("<password>")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:mq:Broker
/// properties:
/// brokerName: example
/// configuration:
/// id: ${test.id}
/// revision: ${test.latestRevision}
/// engineType: ActiveMQ
/// engineVersion: 5.17.6
/// hostInstanceType: mq.t2.micro
/// securityGroups:
/// - ${testAwsSecurityGroup.id}
/// users:
/// - username: example_user
/// password: <password>
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### High-throughput Optimized Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mq.Broker("example", {
/// brokerName: "example",
/// configuration: {
/// id: test.id,
/// revision: test.latestRevision,
/// },
/// engineType: "ActiveMQ",
/// engineVersion: "5.17.6",
/// storageType: "ebs",
/// hostInstanceType: "mq.m5.large",
/// securityGroups: [testAwsSecurityGroup.id],
/// users: [{
/// username: "example_user",
/// password: "<password>",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mq.Broker("example",
/// broker_name="example",
/// configuration={
/// "id": test["id"],
/// "revision": test["latestRevision"],
/// },
/// engine_type="ActiveMQ",
/// engine_version="5.17.6",
/// storage_type="ebs",
/// host_instance_type="mq.m5.large",
/// security_groups=[test_aws_security_group["id"]],
/// users=[{
/// "username": "example_user",
/// "password": "<password>",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Mq.Broker("example", new()
/// {
/// BrokerName = "example",
/// Configuration = new Aws.Mq.Inputs.BrokerConfigurationArgs
/// {
/// Id = test.Id,
/// Revision = test.LatestRevision,
/// },
/// EngineType = "ActiveMQ",
/// EngineVersion = "5.17.6",
/// StorageType = "ebs",
/// HostInstanceType = "mq.m5.large",
/// SecurityGroups = new[]
/// {
/// testAwsSecurityGroup.Id,
/// },
/// Users = new[]
/// {
/// new Aws.Mq.Inputs.BrokerUserArgs
/// {
/// Username = "example_user",
/// Password = "<password>",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mq"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := mq.NewBroker(ctx, "example", &mq.BrokerArgs{
/// BrokerName: pulumi.String("example"),
/// Configuration: &mq.BrokerConfigurationArgs{
/// Id:       pulumi.Any(test.Id),
/// Revision: pulumi.Any(test.LatestRevision),
/// },
/// EngineType:       pulumi.String("ActiveMQ"),
/// EngineVersion:    pulumi.String("5.17.6"),
/// StorageType:      pulumi.String("ebs"),
/// HostInstanceType: pulumi.String("mq.m5.large"),
/// SecurityGroups: pulumi.StringArray{
/// testAwsSecurityGroup.Id,
/// },
/// Users: mq.BrokerUserArray{
/// &mq.BrokerUserArgs{
/// Username: pulumi.String("example_user"),
/// Password: pulumi.String("<password>"),
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
/// import com.pulumi.aws.mq.Broker;
/// import com.pulumi.aws.mq.BrokerArgs;
/// import com.pulumi.aws.mq.inputs.BrokerConfigurationArgs;
/// import com.pulumi.aws.mq.inputs.BrokerUserArgs;
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
/// var example = new Broker("example", BrokerArgs.builder()
/// .brokerName("example")
/// .configuration(BrokerConfigurationArgs.builder()
/// .id(test.id())
/// .revision(test.latestRevision())
/// .build())
/// .engineType("ActiveMQ")
/// .engineVersion("5.17.6")
/// .storageType("ebs")
/// .hostInstanceType("mq.m5.large")
/// .securityGroups(testAwsSecurityGroup.id())
/// .users(BrokerUserArgs.builder()
/// .username("example_user")
/// .password("<password>")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:mq:Broker
/// properties:
/// brokerName: example
/// configuration:
/// id: ${test.id}
/// revision: ${test.latestRevision}
/// engineType: ActiveMQ
/// engineVersion: 5.17.6
/// storageType: ebs
/// hostInstanceType: mq.m5.large
/// securityGroups:
/// - ${testAwsSecurityGroup.id}
/// users:
/// - username: example_user
/// password: <password>
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Cross-Region Data Replication
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplePrimary = new aws.mq.Broker("example_primary", {
/// applyImmediately: true,
/// brokerName: "example_primary",
/// engineType: "ActiveMQ",
/// engineVersion: "5.17.6",
/// hostInstanceType: "mq.m5.large",
/// securityGroups: [examplePrimaryAwsSecurityGroup.id],
/// deploymentMode: "ACTIVE_STANDBY_MULTI_AZ",
/// users: [
/// {
/// username: "example_user",
/// password: "<password>",
/// },
/// {
/// username: "example_replication_user",
/// password: "<password>",
/// replicationUser: true,
/// },
/// ],
/// });
/// const example = new aws.mq.Broker("example", {
/// applyImmediately: true,
/// brokerName: "example",
/// engineType: "ActiveMQ",
/// engineVersion: "5.17.6",
/// hostInstanceType: "mq.m5.large",
/// securityGroups: [exampleAwsSecurityGroup.id],
/// deploymentMode: "ACTIVE_STANDBY_MULTI_AZ",
/// dataReplicationMode: "CRDR",
/// dataReplicationPrimaryBrokerArn: primary.arn,
/// users: [
/// {
/// username: "example_user",
/// password: "<password>",
/// },
/// {
/// username: "example_replication_user",
/// password: "<password>",
/// replicationUser: true,
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_primary = aws.mq.Broker("example_primary",
/// apply_immediately=True,
/// broker_name="example_primary",
/// engine_type="ActiveMQ",
/// engine_version="5.17.6",
/// host_instance_type="mq.m5.large",
/// security_groups=[example_primary_aws_security_group["id"]],
/// deployment_mode="ACTIVE_STANDBY_MULTI_AZ",
/// users=[
/// {
/// "username": "example_user",
/// "password": "<password>",
/// },
/// {
/// "username": "example_replication_user",
/// "password": "<password>",
/// "replication_user": True,
/// },
/// ])
/// example = aws.mq.Broker("example",
/// apply_immediately=True,
/// broker_name="example",
/// engine_type="ActiveMQ",
/// engine_version="5.17.6",
/// host_instance_type="mq.m5.large",
/// security_groups=[example_aws_security_group["id"]],
/// deployment_mode="ACTIVE_STANDBY_MULTI_AZ",
/// data_replication_mode="CRDR",
/// data_replication_primary_broker_arn=primary["arn"],
/// users=[
/// {
/// "username": "example_user",
/// "password": "<password>",
/// },
/// {
/// "username": "example_replication_user",
/// "password": "<password>",
/// "replication_user": True,
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var examplePrimary = new Aws.Mq.Broker("example_primary", new()
/// {
/// ApplyImmediately = true,
/// BrokerName = "example_primary",
/// EngineType = "ActiveMQ",
/// EngineVersion = "5.17.6",
/// HostInstanceType = "mq.m5.large",
/// SecurityGroups = new[]
/// {
/// examplePrimaryAwsSecurityGroup.Id,
/// },
/// DeploymentMode = "ACTIVE_STANDBY_MULTI_AZ",
/// Users = new[]
/// {
/// new Aws.Mq.Inputs.BrokerUserArgs
/// {
/// Username = "example_user",
/// Password = "<password>",
/// },
/// new Aws.Mq.Inputs.BrokerUserArgs
/// {
/// Username = "example_replication_user",
/// Password = "<password>",
/// ReplicationUser = true,
/// },
/// },
/// });
///
/// var example = new Aws.Mq.Broker("example", new()
/// {
/// ApplyImmediately = true,
/// BrokerName = "example",
/// EngineType = "ActiveMQ",
/// EngineVersion = "5.17.6",
/// HostInstanceType = "mq.m5.large",
/// SecurityGroups = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// DeploymentMode = "ACTIVE_STANDBY_MULTI_AZ",
/// DataReplicationMode = "CRDR",
/// DataReplicationPrimaryBrokerArn = primary.Arn,
/// Users = new[]
/// {
/// new Aws.Mq.Inputs.BrokerUserArgs
/// {
/// Username = "example_user",
/// Password = "<password>",
/// },
/// new Aws.Mq.Inputs.BrokerUserArgs
/// {
/// Username = "example_replication_user",
/// Password = "<password>",
/// ReplicationUser = true,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mq"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := mq.NewBroker(ctx, "example_primary", &mq.BrokerArgs{
/// ApplyImmediately: pulumi.Bool(true),
/// BrokerName:       pulumi.String("example_primary"),
/// EngineType:       pulumi.String("ActiveMQ"),
/// EngineVersion:    pulumi.String("5.17.6"),
/// HostInstanceType: pulumi.String("mq.m5.large"),
/// SecurityGroups: pulumi.StringArray{
/// examplePrimaryAwsSecurityGroup.Id,
/// },
/// DeploymentMode: pulumi.String("ACTIVE_STANDBY_MULTI_AZ"),
/// Users: mq.BrokerUserArray{
/// &mq.BrokerUserArgs{
/// Username: pulumi.String("example_user"),
/// Password: pulumi.String("<password>"),
/// },
/// &mq.BrokerUserArgs{
/// Username:        pulumi.String("example_replication_user"),
/// Password:        pulumi.String("<password>"),
/// ReplicationUser: pulumi.Bool(true),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = mq.NewBroker(ctx, "example", &mq.BrokerArgs{
/// ApplyImmediately: pulumi.Bool(true),
/// BrokerName:       pulumi.String("example"),
/// EngineType:       pulumi.String("ActiveMQ"),
/// EngineVersion:    pulumi.String("5.17.6"),
/// HostInstanceType: pulumi.String("mq.m5.large"),
/// SecurityGroups: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// DeploymentMode:                  pulumi.String("ACTIVE_STANDBY_MULTI_AZ"),
/// DataReplicationMode:             pulumi.String("CRDR"),
/// DataReplicationPrimaryBrokerArn: pulumi.Any(primary.Arn),
/// Users: mq.BrokerUserArray{
/// &mq.BrokerUserArgs{
/// Username: pulumi.String("example_user"),
/// Password: pulumi.String("<password>"),
/// },
/// &mq.BrokerUserArgs{
/// Username:        pulumi.String("example_replication_user"),
/// Password:        pulumi.String("<password>"),
/// ReplicationUser: pulumi.Bool(true),
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
/// import com.pulumi.aws.mq.Broker;
/// import com.pulumi.aws.mq.BrokerArgs;
/// import com.pulumi.aws.mq.inputs.BrokerUserArgs;
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
/// var examplePrimary = new Broker("examplePrimary", BrokerArgs.builder()
/// .applyImmediately(true)
/// .brokerName("example_primary")
/// .engineType("ActiveMQ")
/// .engineVersion("5.17.6")
/// .hostInstanceType("mq.m5.large")
/// .securityGroups(examplePrimaryAwsSecurityGroup.id())
/// .deploymentMode("ACTIVE_STANDBY_MULTI_AZ")
/// .users(
/// BrokerUserArgs.builder()
/// .username("example_user")
/// .password("<password>")
/// .build(),
/// BrokerUserArgs.builder()
/// .username("example_replication_user")
/// .password("<password>")
/// .replicationUser(true)
/// .build())
/// .build());
///
/// var example = new Broker("example", BrokerArgs.builder()
/// .applyImmediately(true)
/// .brokerName("example")
/// .engineType("ActiveMQ")
/// .engineVersion("5.17.6")
/// .hostInstanceType("mq.m5.large")
/// .securityGroups(exampleAwsSecurityGroup.id())
/// .deploymentMode("ACTIVE_STANDBY_MULTI_AZ")
/// .dataReplicationMode("CRDR")
/// .dataReplicationPrimaryBrokerArn(primary.arn())
/// .users(
/// BrokerUserArgs.builder()
/// .username("example_user")
/// .password("<password>")
/// .build(),
/// BrokerUserArgs.builder()
/// .username("example_replication_user")
/// .password("<password>")
/// .replicationUser(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// examplePrimary:
/// type: aws:mq:Broker
/// name: example_primary
/// properties:
/// applyImmediately: true
/// brokerName: example_primary
/// engineType: ActiveMQ
/// engineVersion: 5.17.6
/// hostInstanceType: mq.m5.large
/// securityGroups:
/// - ${examplePrimaryAwsSecurityGroup.id}
/// deploymentMode: ACTIVE_STANDBY_MULTI_AZ
/// users:
/// - username: example_user
/// password: <password>
/// - username: example_replication_user
/// password: <password>
/// replicationUser: true
/// example:
/// type: aws:mq:Broker
/// properties:
/// applyImmediately: true
/// brokerName: example
/// engineType: ActiveMQ
/// engineVersion: 5.17.6
/// hostInstanceType: mq.m5.large
/// securityGroups:
/// - ${exampleAwsSecurityGroup.id}
/// deploymentMode: ACTIVE_STANDBY_MULTI_AZ
/// dataReplicationMode: CRDR
/// dataReplicationPrimaryBrokerArn: ${primary.arn}
/// users:
/// - username: example_user
/// password: <password>
/// - username: example_replication_user
/// password: <password>
/// replicationUser: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// See the [AWS MQ documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/crdr-for-active-mq.html) on cross-region data replication for additional details.
///
/// ## Import
///
/// Using `pulumi import`, import MQ Brokers using their broker id. For example:
///
/// ```sh
/// $ pulumi import aws:mq/broker:Broker example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class Broker extends CustomResource {
  /// Whether to apply broker modifications immediately. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> applyImmediately;

  /// ARN of the broker.
  late final Output<String> arn;

  /// Authentication strategy used to secure the broker. Valid values are <span pulumi-lang-nodejs="`simple`" pulumi-lang-dotnet="`Simple`" pulumi-lang-go="`simple`" pulumi-lang-python="`simple`" pulumi-lang-yaml="`simple`" pulumi-lang-java="`simple`">`simple`</span> and <span pulumi-lang-nodejs="`ldap`" pulumi-lang-dotnet="`Ldap`" pulumi-lang-go="`ldap`" pulumi-lang-python="`ldap`" pulumi-lang-yaml="`ldap`" pulumi-lang-java="`ldap`">`ldap`</span>. <span pulumi-lang-nodejs="`ldap`" pulumi-lang-dotnet="`Ldap`" pulumi-lang-go="`ldap`" pulumi-lang-python="`ldap`" pulumi-lang-yaml="`ldap`" pulumi-lang-java="`ldap`">`ldap`</span> is not supported for <span pulumi-lang-nodejs="`engineType`" pulumi-lang-dotnet="`EngineType`" pulumi-lang-go="`engineType`" pulumi-lang-python="`engine_type`" pulumi-lang-yaml="`engineType`" pulumi-lang-java="`engineType`">`engine_type`</span> `RabbitMQ`.
  late final Output<String> authenticationStrategy;

  /// Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available.
  late final Output<bool?> autoMinorVersionUpgrade;

  /// Name of the broker.
  late final Output<String> brokerName;

  /// Configuration block for broker configuration. Applies to <span pulumi-lang-nodejs="`engineType`" pulumi-lang-dotnet="`EngineType`" pulumi-lang-go="`engineType`" pulumi-lang-python="`engine_type`" pulumi-lang-yaml="`engineType`" pulumi-lang-java="`engineType`">`engine_type`</span> of `ActiveMQ` and `RabbitMQ` only. Detailed below.
  late final Output<BrokerConfiguration> configuration;

  /// Whether this broker is part of a data replication pair. Valid values are `CRDR` and `NONE`.
  late final Output<String> dataReplicationMode;

  /// ARN of the primary broker used to replicate data in a data replication pair. Required when <span pulumi-lang-nodejs="`dataReplicationMode`" pulumi-lang-dotnet="`DataReplicationMode`" pulumi-lang-go="`dataReplicationMode`" pulumi-lang-python="`data_replication_mode`" pulumi-lang-yaml="`dataReplicationMode`" pulumi-lang-java="`dataReplicationMode`">`data_replication_mode`</span> is `CRDR`.
  late final Output<String?> dataReplicationPrimaryBrokerArn;

  /// Deployment mode of the broker. Valid values are `SINGLE_INSTANCE`, `ACTIVE_STANDBY_MULTI_AZ`, and `CLUSTER_MULTI_AZ`. Default is `SINGLE_INSTANCE`.
  late final Output<String?> deploymentMode;

  /// Configuration block containing encryption options. Detailed below.
  late final Output<BrokerEncryptionOptions?> encryptionOptions;

  /// Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  late final Output<String> engineType;

  /// Version of the broker engine.
  late final Output<String> engineVersion;

  /// Broker's instance type. For example, `mq.t3.micro`, `mq.m5.large`.
  late final Output<String> hostInstanceType;

  /// List of information about allocated brokers (both active & standby).
  late final Output<List<BrokerInstance>> instances;

  /// Configuration block for the LDAP server used to authenticate and authorize connections. Not supported for <span pulumi-lang-nodejs="`engineType`" pulumi-lang-dotnet="`EngineType`" pulumi-lang-go="`engineType`" pulumi-lang-python="`engine_type`" pulumi-lang-yaml="`engineType`" pulumi-lang-java="`engineType`">`engine_type`</span> `RabbitMQ`. Detailed below.
  late final Output<BrokerLdapServerMetadata?> ldapServerMetadata;

  /// Configuration block for the logging configuration. Detailed below.
  late final Output<BrokerLogs?> logs;

  /// Configuration block for the maintenance window start time. Detailed below.
  late final Output<BrokerMaintenanceWindowStartTime>
      maintenanceWindowStartTime;

  /// Data replication mode that will be applied after reboot.
  late final Output<String> pendingDataReplicationMode;

  /// Whether to enable connections from applications outside of the VPC that hosts the broker's subnets.
  late final Output<bool?> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of security group IDs assigned to the broker.
  late final Output<List<String>?> securityGroups;

  /// Storage type of the broker. For <span pulumi-lang-nodejs="`engineType`" pulumi-lang-dotnet="`EngineType`" pulumi-lang-go="`engineType`" pulumi-lang-python="`engine_type`" pulumi-lang-yaml="`engineType`" pulumi-lang-java="`engineType`">`engine_type`</span> `ActiveMQ`, valid values are <span pulumi-lang-nodejs="`efs`" pulumi-lang-dotnet="`Efs`" pulumi-lang-go="`efs`" pulumi-lang-python="`efs`" pulumi-lang-yaml="`efs`" pulumi-lang-java="`efs`">`efs`</span> and <span pulumi-lang-nodejs="`ebs`" pulumi-lang-dotnet="`Ebs`" pulumi-lang-go="`ebs`" pulumi-lang-python="`ebs`" pulumi-lang-yaml="`ebs`" pulumi-lang-java="`ebs`">`ebs`</span> (AWS-default is <span pulumi-lang-nodejs="`efs`" pulumi-lang-dotnet="`Efs`" pulumi-lang-go="`efs`" pulumi-lang-python="`efs`" pulumi-lang-yaml="`efs`" pulumi-lang-java="`efs`">`efs`</span>). For <span pulumi-lang-nodejs="`engineType`" pulumi-lang-dotnet="`EngineType`" pulumi-lang-go="`engineType`" pulumi-lang-python="`engine_type`" pulumi-lang-yaml="`engineType`" pulumi-lang-java="`engineType`">`engine_type`</span> `RabbitMQ`, only <span pulumi-lang-nodejs="`ebs`" pulumi-lang-dotnet="`Ebs`" pulumi-lang-go="`ebs`" pulumi-lang-python="`ebs`" pulumi-lang-yaml="`ebs`" pulumi-lang-java="`ebs`">`ebs`</span> is supported. When using <span pulumi-lang-nodejs="`ebs`" pulumi-lang-dotnet="`Ebs`" pulumi-lang-go="`ebs`" pulumi-lang-python="`ebs`" pulumi-lang-yaml="`ebs`" pulumi-lang-java="`ebs`">`ebs`</span>, only the `mq.m5` broker instance type family is supported.
  late final Output<String> storageType;

  /// List of subnet IDs in which to launch the broker. A `SINGLE_INSTANCE` deployment requires one subnet. An `ACTIVE_STANDBY_MULTI_AZ` deployment requires multiple subnets.
  late final Output<List<String>> subnetIds;

  /// Map of tags to assign to the broker. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for broker users. For <span pulumi-lang-nodejs="`engineType`" pulumi-lang-dotnet="`EngineType`" pulumi-lang-go="`engineType`" pulumi-lang-python="`engine_type`" pulumi-lang-yaml="`engineType`" pulumi-lang-java="`engineType`">`engine_type`</span> of `RabbitMQ`, Amazon MQ does not return broker users preventing this resource from making user updates and drift detection. Detailed below.
  ///
  /// The following arguments are optional:
  late final Output<List<BrokerUser>> users;

  Broker(
    String name, {
    BrokerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:mq/broker:Broker',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applyImmediately = registerOutput<bool?>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.authenticationStrategy =
        registerOutput<String>('authenticationStrategy');
    this.autoMinorVersionUpgrade =
        registerOutput<bool?>('autoMinorVersionUpgrade');
    this.brokerName = registerOutput<String>('brokerName');
    this.configuration = registerOutput<BrokerConfiguration>('configuration');
    this.dataReplicationMode = registerOutput<String>('dataReplicationMode');
    this.dataReplicationPrimaryBrokerArn =
        registerOutput<String?>('dataReplicationPrimaryBrokerArn');
    this.deploymentMode = registerOutput<String?>('deploymentMode');
    this.encryptionOptions =
        registerOutput<BrokerEncryptionOptions?>('encryptionOptions');
    this.engineType = registerOutput<String>('engineType');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.hostInstanceType = registerOutput<String>('hostInstanceType');
    this.instances = registerOutput<List<BrokerInstance>>('instances');
    this.ldapServerMetadata =
        registerOutput<BrokerLdapServerMetadata?>('ldapServerMetadata');
    this.logs = registerOutput<BrokerLogs?>('logs');
    this.maintenanceWindowStartTime =
        registerOutput<BrokerMaintenanceWindowStartTime>(
            'maintenanceWindowStartTime');
    this.pendingDataReplicationMode =
        registerOutput<String>('pendingDataReplicationMode');
    this.publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.securityGroups = registerOutput<List<String>?>('securityGroups');
    this.storageType = registerOutput<String>('storageType');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.users = registerOutput<List<BrokerUser>>('users');
  }
}
