import 'package:pulumi/pulumi.dart';
import '../subscriber_source/subscriber_source.dart';
import '../subscriber_subscriber_identity/subscriber_subscriber_identity.dart';
import '../subscriber_timeouts/subscriber_timeouts.dart';
import 'subscriber_args.dart';

/// Resource for managing an AWS Security Lake Subscriber.
///
/// > **NOTE:** The underlying <span pulumi-lang-nodejs="`aws.securitylake.DataLake`" pulumi-lang-dotnet="`aws.securitylake.DataLake`" pulumi-lang-go="`securitylake.DataLake`" pulumi-lang-python="`securitylake.DataLake`" pulumi-lang-yaml="`aws.securitylake.DataLake`" pulumi-lang-java="`aws.securitylake.DataLake`">`aws.securitylake.DataLake`</span> must be configured before creating the <span pulumi-lang-nodejs="`aws.securitylake.Subscriber`" pulumi-lang-dotnet="`aws.securitylake.Subscriber`" pulumi-lang-go="`securitylake.Subscriber`" pulumi-lang-python="`securitylake.Subscriber`" pulumi-lang-yaml="`aws.securitylake.Subscriber`" pulumi-lang-java="`aws.securitylake.Subscriber`">`aws.securitylake.Subscriber`</span>. Use a <span pulumi-lang-nodejs="`dependsOn`" pulumi-lang-dotnet="`DependsOn`" pulumi-lang-go="`dependsOn`" pulumi-lang-python="`depends_on`" pulumi-lang-yaml="`dependsOn`" pulumi-lang-java="`dependsOn`">`depends_on`</span> statement.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securitylake.Subscriber("example", {
/// subscriberName: "example-name",
/// accessType: "S3",
/// sources: [{
/// awsLogSourceResource: {
/// sourceName: "ROUTE53",
/// sourceVersion: "1.0",
/// },
/// }],
/// subscriberIdentity: {
/// externalId: "example",
/// principal: "1234567890",
/// },
/// }, {
/// dependsOn: [exampleAwsSecuritylakeDataLake],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.Subscriber("example",
/// subscriber_name="example-name",
/// access_type="S3",
/// sources=[{
/// "aws_log_source_resource": {
/// "source_name": "ROUTE53",
/// "source_version": "1.0",
/// },
/// }],
/// subscriber_identity={
/// "external_id": "example",
/// "principal": "1234567890",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_securitylake_data_lake]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SecurityLake.Subscriber("example", new()
/// {
/// SubscriberName = "example-name",
/// AccessType = "S3",
/// Sources = new[]
/// {
/// new Aws.SecurityLake.Inputs.SubscriberSourceArgs
/// {
/// AwsLogSourceResource = new Aws.SecurityLake.Inputs.SubscriberSourceAwsLogSourceResourceArgs
/// {
/// SourceName = "ROUTE53",
/// SourceVersion = "1.0",
/// },
/// },
/// },
/// SubscriberIdentity = new Aws.SecurityLake.Inputs.SubscriberSubscriberIdentityArgs
/// {
/// ExternalId = "example",
/// Principal = "1234567890",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsSecuritylakeDataLake,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securitylake"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securitylake.NewSubscriber(ctx, "example", &securitylake.SubscriberArgs{
/// SubscriberName: pulumi.String("example-name"),
/// AccessType:     pulumi.String("S3"),
/// Sources: securitylake.SubscriberSourceArray{
/// &securitylake.SubscriberSourceArgs{
/// AwsLogSourceResource: &securitylake.SubscriberSourceAwsLogSourceResourceArgs{
/// SourceName:    pulumi.String("ROUTE53"),
/// SourceVersion: pulumi.String("1.0"),
/// },
/// },
/// },
/// SubscriberIdentity: &securitylake.SubscriberSubscriberIdentityArgs{
/// ExternalId: pulumi.String("example"),
/// Principal:  pulumi.String("1234567890"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsSecuritylakeDataLake,
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
/// import com.pulumi.aws.securitylake.Subscriber;
/// import com.pulumi.aws.securitylake.SubscriberArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberSourceArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberSourceAwsLogSourceResourceArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberSubscriberIdentityArgs;
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
/// var example = new Subscriber("example", SubscriberArgs.builder()
/// .subscriberName("example-name")
/// .accessType("S3")
/// .sources(SubscriberSourceArgs.builder()
/// .awsLogSourceResource(SubscriberSourceAwsLogSourceResourceArgs.builder()
/// .sourceName("ROUTE53")
/// .sourceVersion("1.0")
/// .build())
/// .build())
/// .subscriberIdentity(SubscriberSubscriberIdentityArgs.builder()
/// .externalId("example")
/// .principal("1234567890")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleAwsSecuritylakeDataLake)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:securitylake:Subscriber
/// properties:
/// subscriberName: example-name
/// accessType: S3
/// sources:
/// - awsLogSourceResource:
/// sourceName: ROUTE53
/// sourceVersion: '1.0'
/// subscriberIdentity:
/// externalId: example
/// principal: '1234567890'
/// options:
/// dependsOn:
/// - ${exampleAwsSecuritylakeDataLake}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Multiple Log Sources
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securitylake.Subscriber("example", {
/// subscriberName: "example-name",
/// accessType: "S3",
/// sources: [
/// {
/// awsLogSourceResource: {
/// sourceName: "SH_FINDINGS",
/// sourceVersion: "2.0",
/// },
/// },
/// {
/// awsLogSourceResource: {
/// sourceName: "ROUTE53",
/// sourceVersion: "2.0",
/// },
/// },
/// ],
/// subscriberIdentity: {
/// externalId: "example",
/// principal: "1234567890",
/// },
/// }, {
/// dependsOn: [exampleAwsSecuritylakeDataLake],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.Subscriber("example",
/// subscriber_name="example-name",
/// access_type="S3",
/// sources=[
/// {
/// "aws_log_source_resource": {
/// "source_name": "SH_FINDINGS",
/// "source_version": "2.0",
/// },
/// },
/// {
/// "aws_log_source_resource": {
/// "source_name": "ROUTE53",
/// "source_version": "2.0",
/// },
/// },
/// ],
/// subscriber_identity={
/// "external_id": "example",
/// "principal": "1234567890",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_securitylake_data_lake]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SecurityLake.Subscriber("example", new()
/// {
/// SubscriberName = "example-name",
/// AccessType = "S3",
/// Sources = new[]
/// {
/// new Aws.SecurityLake.Inputs.SubscriberSourceArgs
/// {
/// AwsLogSourceResource = new Aws.SecurityLake.Inputs.SubscriberSourceAwsLogSourceResourceArgs
/// {
/// SourceName = "SH_FINDINGS",
/// SourceVersion = "2.0",
/// },
/// },
/// new Aws.SecurityLake.Inputs.SubscriberSourceArgs
/// {
/// AwsLogSourceResource = new Aws.SecurityLake.Inputs.SubscriberSourceAwsLogSourceResourceArgs
/// {
/// SourceName = "ROUTE53",
/// SourceVersion = "2.0",
/// },
/// },
/// },
/// SubscriberIdentity = new Aws.SecurityLake.Inputs.SubscriberSubscriberIdentityArgs
/// {
/// ExternalId = "example",
/// Principal = "1234567890",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsSecuritylakeDataLake,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securitylake"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securitylake.NewSubscriber(ctx, "example", &securitylake.SubscriberArgs{
/// SubscriberName: pulumi.String("example-name"),
/// AccessType:     pulumi.String("S3"),
/// Sources: securitylake.SubscriberSourceArray{
/// &securitylake.SubscriberSourceArgs{
/// AwsLogSourceResource: &securitylake.SubscriberSourceAwsLogSourceResourceArgs{
/// SourceName:    pulumi.String("SH_FINDINGS"),
/// SourceVersion: pulumi.String("2.0"),
/// },
/// },
/// &securitylake.SubscriberSourceArgs{
/// AwsLogSourceResource: &securitylake.SubscriberSourceAwsLogSourceResourceArgs{
/// SourceName:    pulumi.String("ROUTE53"),
/// SourceVersion: pulumi.String("2.0"),
/// },
/// },
/// },
/// SubscriberIdentity: &securitylake.SubscriberSubscriberIdentityArgs{
/// ExternalId: pulumi.String("example"),
/// Principal:  pulumi.String("1234567890"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsSecuritylakeDataLake,
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
/// import com.pulumi.aws.securitylake.Subscriber;
/// import com.pulumi.aws.securitylake.SubscriberArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberSourceArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberSourceAwsLogSourceResourceArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberSubscriberIdentityArgs;
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
/// var example = new Subscriber("example", SubscriberArgs.builder()
/// .subscriberName("example-name")
/// .accessType("S3")
/// .sources(
/// SubscriberSourceArgs.builder()
/// .awsLogSourceResource(SubscriberSourceAwsLogSourceResourceArgs.builder()
/// .sourceName("SH_FINDINGS")
/// .sourceVersion("2.0")
/// .build())
/// .build(),
/// SubscriberSourceArgs.builder()
/// .awsLogSourceResource(SubscriberSourceAwsLogSourceResourceArgs.builder()
/// .sourceName("ROUTE53")
/// .sourceVersion("2.0")
/// .build())
/// .build())
/// .subscriberIdentity(SubscriberSubscriberIdentityArgs.builder()
/// .externalId("example")
/// .principal("1234567890")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleAwsSecuritylakeDataLake)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:securitylake:Subscriber
/// properties:
/// subscriberName: example-name
/// accessType: S3
/// sources:
/// - awsLogSourceResource:
/// sourceName: SH_FINDINGS
/// sourceVersion: '2.0'
/// - awsLogSourceResource:
/// sourceName: ROUTE53
/// sourceVersion: '2.0'
/// subscriberIdentity:
/// externalId: example
/// principal: '1234567890'
/// options:
/// dependsOn:
/// - ${exampleAwsSecuritylakeDataLake}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Security Lake subscriber using the subscriber ID. For example:
///
/// ```sh
/// $ pulumi import aws:securitylake/subscriber:Subscriber example 9f3bfe79-d543-474d-a93c-f3846805d208
/// ```
class Subscriber extends CustomResource {
  /// The Amazon S3 or Lake Formation access type.
  late final Output<String> accessType;

  /// ARN of the Data Lake.
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) which uniquely defines the AWS RAM resource share. Before accepting the RAM resource share invitation, you can view details related to the RAM resource share.
  late final Output<String> resourceShareArn;

  /// The name of the resource share.
  late final Output<String> resourceShareName;

  /// The ARN of the IAM role to be used by the entity putting logs into your custom source partition.
  late final Output<String> roleArn;

  /// The ARN for the Amazon Security Lake Amazon S3 bucket.
  late final Output<String> s3BucketArn;

  /// The supported AWS services from which logs and events are collected. Security Lake supports log and event collection for natively supported AWS services. See <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> Blocks below.
  late final Output<List<SubscriberSource>> sources;

  /// The description for your subscriber account in Security Lake.
  late final Output<String?> subscriberDescription;

  /// The subscriber endpoint to which exception messages are posted.
  late final Output<String> subscriberEndpoint;

  /// The AWS identity used to access your data. See <span pulumi-lang-nodejs="`subscriberIdentity`" pulumi-lang-dotnet="`SubscriberIdentity`" pulumi-lang-go="`subscriberIdentity`" pulumi-lang-python="`subscriber_identity`" pulumi-lang-yaml="`subscriberIdentity`" pulumi-lang-java="`subscriberIdentity`">`subscriber_identity`</span> Block below.
  late final Output<SubscriberSubscriberIdentity> subscriberIdentity;

  /// The name of your Security Lake subscriber account.
  late final Output<String?> subscriberName;

  /// The subscriber status of the Amazon Security Lake subscriber account.
  late final Output<String> subscriberStatus;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<SubscriberTimeouts?> timeouts;

  Subscriber(
    String name, {
    SubscriberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/subscriber:Subscriber',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessType = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceShareArn = Output.createUnknown<String>();
    this.resourceShareName = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
    this.s3BucketArn = Output.createUnknown<String>();
    this.sources = Output.createUnknown<List<SubscriberSource>>();
    this.subscriberDescription = Output.createUnknown<String?>();
    this.subscriberEndpoint = Output.createUnknown<String>();
    this.subscriberIdentity =
        Output.createUnknown<SubscriberSubscriberIdentity>();
    this.subscriberName = Output.createUnknown<String?>();
    this.subscriberStatus = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<SubscriberTimeouts?>();
  }
}
