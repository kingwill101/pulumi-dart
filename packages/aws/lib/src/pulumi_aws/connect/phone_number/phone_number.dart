import 'package:pulumi/pulumi.dart';
import '../phone_number_status/phone_number_status.dart';
import 'phone_number_args.dart';

/// Provides an Amazon Connect Phone Number resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.PhoneNumber("example", {
/// targetArn: exampleAwsConnectInstance.arn,
/// countryCode: "US",
/// type: "DID",
/// tags: {
/// hello: "world",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.PhoneNumber("example",
/// target_arn=example_aws_connect_instance["arn"],
/// country_code="US",
/// type="DID",
/// tags={
/// "hello": "world",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Connect.PhoneNumber("example", new()
/// {
/// TargetArn = exampleAwsConnectInstance.Arn,
/// CountryCode = "US",
/// Type = "DID",
/// Tags =
/// {
/// { "hello", "world" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewPhoneNumber(ctx, "example", &connect.PhoneNumberArgs{
/// TargetArn:   pulumi.Any(exampleAwsConnectInstance.Arn),
/// CountryCode: pulumi.String("US"),
/// Type:        pulumi.String("DID"),
/// Tags: pulumi.StringMap{
/// "hello": pulumi.String("world"),
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
/// import com.pulumi.aws.connect.PhoneNumber;
/// import com.pulumi.aws.connect.PhoneNumberArgs;
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
/// var example = new PhoneNumber("example", PhoneNumberArgs.builder()
/// .targetArn(exampleAwsConnectInstance.arn())
/// .countryCode("US")
/// .type("DID")
/// .tags(Map.of("hello", "world"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:connect:PhoneNumber
/// properties:
/// targetArn: ${exampleAwsConnectInstance.arn}
/// countryCode: US
/// type: DID
/// tags:
/// hello: world
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Description
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.PhoneNumber("example", {
/// targetArn: exampleAwsConnectInstance.arn,
/// countryCode: "US",
/// type: "DID",
/// description: "example description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.PhoneNumber("example",
/// target_arn=example_aws_connect_instance["arn"],
/// country_code="US",
/// type="DID",
/// description="example description")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Connect.PhoneNumber("example", new()
/// {
/// TargetArn = exampleAwsConnectInstance.Arn,
/// CountryCode = "US",
/// Type = "DID",
/// Description = "example description",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewPhoneNumber(ctx, "example", &connect.PhoneNumberArgs{
/// TargetArn:   pulumi.Any(exampleAwsConnectInstance.Arn),
/// CountryCode: pulumi.String("US"),
/// Type:        pulumi.String("DID"),
/// Description: pulumi.String("example description"),
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
/// import com.pulumi.aws.connect.PhoneNumber;
/// import com.pulumi.aws.connect.PhoneNumberArgs;
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
/// var example = new PhoneNumber("example", PhoneNumberArgs.builder()
/// .targetArn(exampleAwsConnectInstance.arn())
/// .countryCode("US")
/// .type("DID")
/// .description("example description")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:connect:PhoneNumber
/// properties:
/// targetArn: ${exampleAwsConnectInstance.arn}
/// countryCode: US
/// type: DID
/// description: example description
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Prefix to filter phone numbers
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.PhoneNumber("example", {
/// targetArn: exampleAwsConnectInstance.arn,
/// countryCode: "US",
/// type: "DID",
/// prefix: "+18005",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.PhoneNumber("example",
/// target_arn=example_aws_connect_instance["arn"],
/// country_code="US",
/// type="DID",
/// prefix="+18005")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Connect.PhoneNumber("example", new()
/// {
/// TargetArn = exampleAwsConnectInstance.Arn,
/// CountryCode = "US",
/// Type = "DID",
/// Prefix = "+18005",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewPhoneNumber(ctx, "example", &connect.PhoneNumberArgs{
/// TargetArn:   pulumi.Any(exampleAwsConnectInstance.Arn),
/// CountryCode: pulumi.String("US"),
/// Type:        pulumi.String("DID"),
/// Prefix:      pulumi.String("+18005"),
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
/// import com.pulumi.aws.connect.PhoneNumber;
/// import com.pulumi.aws.connect.PhoneNumberArgs;
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
/// var example = new PhoneNumber("example", PhoneNumberArgs.builder()
/// .targetArn(exampleAwsConnectInstance.arn())
/// .countryCode("US")
/// .type("DID")
/// .prefix("+18005")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:connect:PhoneNumber
/// properties:
/// targetArn: ${exampleAwsConnectInstance.arn}
/// countryCode: US
/// type: DID
/// prefix: '+18005'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the connect phone number.
///
/// #### Optional
///
/// - <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// - <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Amazon Connect Phone Numbers using its <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:connect/phoneNumber:PhoneNumber example 12345678-abcd-1234-efgh-9876543210ab
/// ```
class PhoneNumber extends CustomResource {
  /// The ARN of the phone number.
  late final Output<String> arn;

  /// The ISO country code. For a list of Valid values, refer to [PhoneNumberCountryCode](https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html#connect-SearchAvailablePhoneNumbers-request-PhoneNumberCountryCode).
  late final Output<String> countryCode;

  /// The description of the phone number.
  late final Output<String?> description;

  /// The phone number. Phone numbers are formatted `[+] [country code] [subscriber number including area code]`.
  late final Output<String> phoneNumber;

  /// The prefix of the phone number that is used to filter available phone numbers. If provided, it must contain `+` as part of the country code. Do not specify this argument when importing the resource.
  late final Output<String?> prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The status of the phone number. Valid Values: `CLAIMED` | `IN_PROGRESS` | `FAILED`.
  late final Output<List<PhoneNumberStatus>> statuses;

  /// Tags to apply to the Phone Number. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.
  late final Output<String> targetArn;

  /// The type of phone number. Valid Values: `TOLL_FREE` | `DID`.
  late final Output<String> type;

  PhoneNumber(
    String name, {
    PhoneNumberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/phoneNumber:PhoneNumber',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.countryCode = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.phoneNumber = Output.createUnknown<String>();
    this.prefix = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.statuses = Output.createUnknown<List<PhoneNumberStatus>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.targetArn = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
  }
}
