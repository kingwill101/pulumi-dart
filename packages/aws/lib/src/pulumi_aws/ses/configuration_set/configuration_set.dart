import 'package:pulumi/pulumi.dart';
import '../configuration_set_delivery_options/configuration_set_delivery_options.dart';
import '../configuration_set_tracking_options/configuration_set_tracking_options.dart';
import 'configuration_set_args.dart';

/// Provides an SES configuration set resource.
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
/// const test = new aws.ses.ConfigurationSet("test", {name: "some-configuration-set-test"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ses.ConfigurationSet("test", name="some-configuration-set-test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Ses.ConfigurationSet("test", new()
/// {
/// Name = "some-configuration-set-test",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ses.NewConfigurationSet(ctx, "test", &ses.ConfigurationSetArgs{
/// Name: pulumi.String("some-configuration-set-test"),
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
/// import com.pulumi.aws.ses.ConfigurationSet;
/// import com.pulumi.aws.ses.ConfigurationSetArgs;
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
/// var test = new ConfigurationSet("test", ConfigurationSetArgs.builder()
/// .name("some-configuration-set-test")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ses:ConfigurationSet
/// properties:
/// name: some-configuration-set-test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Require TLS Connections
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ses.ConfigurationSet("test", {
/// name: "some-configuration-set-test",
/// deliveryOptions: {
/// tlsPolicy: "Require",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ses.ConfigurationSet("test",
/// name="some-configuration-set-test",
/// delivery_options={
/// "tls_policy": "Require",
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
/// var test = new Aws.Ses.ConfigurationSet("test", new()
/// {
/// Name = "some-configuration-set-test",
/// DeliveryOptions = new Aws.Ses.Inputs.ConfigurationSetDeliveryOptionsArgs
/// {
/// TlsPolicy = "Require",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ses.NewConfigurationSet(ctx, "test", &ses.ConfigurationSetArgs{
/// Name: pulumi.String("some-configuration-set-test"),
/// DeliveryOptions: &ses.ConfigurationSetDeliveryOptionsArgs{
/// TlsPolicy: pulumi.String("Require"),
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
/// import com.pulumi.aws.ses.ConfigurationSet;
/// import com.pulumi.aws.ses.ConfigurationSetArgs;
/// import com.pulumi.aws.ses.inputs.ConfigurationSetDeliveryOptionsArgs;
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
/// var test = new ConfigurationSet("test", ConfigurationSetArgs.builder()
/// .name("some-configuration-set-test")
/// .deliveryOptions(ConfigurationSetDeliveryOptionsArgs.builder()
/// .tlsPolicy("Require")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ses:ConfigurationSet
/// properties:
/// name: some-configuration-set-test
/// deliveryOptions:
/// tlsPolicy: Require
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Tracking Options
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ses.ConfigurationSet("test", {
/// name: "some-configuration-set-test",
/// trackingOptions: {
/// customRedirectDomain: "sub.example.com",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ses.ConfigurationSet("test",
/// name="some-configuration-set-test",
/// tracking_options={
/// "custom_redirect_domain": "sub.example.com",
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
/// var test = new Aws.Ses.ConfigurationSet("test", new()
/// {
/// Name = "some-configuration-set-test",
/// TrackingOptions = new Aws.Ses.Inputs.ConfigurationSetTrackingOptionsArgs
/// {
/// CustomRedirectDomain = "sub.example.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ses.NewConfigurationSet(ctx, "test", &ses.ConfigurationSetArgs{
/// Name: pulumi.String("some-configuration-set-test"),
/// TrackingOptions: &ses.ConfigurationSetTrackingOptionsArgs{
/// CustomRedirectDomain: pulumi.String("sub.example.com"),
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
/// import com.pulumi.aws.ses.ConfigurationSet;
/// import com.pulumi.aws.ses.ConfigurationSetArgs;
/// import com.pulumi.aws.ses.inputs.ConfigurationSetTrackingOptionsArgs;
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
/// var test = new ConfigurationSet("test", ConfigurationSetArgs.builder()
/// .name("some-configuration-set-test")
/// .trackingOptions(ConfigurationSetTrackingOptionsArgs.builder()
/// .customRedirectDomain("sub.example.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ses:ConfigurationSet
/// properties:
/// name: some-configuration-set-test
/// trackingOptions:
/// customRedirectDomain: sub.example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SES Configuration Sets using their <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ses/configurationSet:ConfigurationSet test some-configuration-set-test
/// ```
class ConfigurationSet extends CustomResource {
  /// SES configuration set ARN.
  late final Output<String> arn;

  /// Whether messages that use the configuration set are required to use TLS. See below.
  late final Output<ConfigurationSetDeliveryOptions?> deliveryOptions;

  /// Date and time at which the reputation metrics for the configuration set were last reset. Resetting these metrics is known as a fresh start.
  late final Output<String> lastFreshStart;

  /// Name of the configuration set.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether or not Amazon SES publishes reputation metrics for the configuration set, such as bounce and complaint rates, to Amazon CloudWatch. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> reputationMetricsEnabled;

  /// Whether email sending is enabled or disabled for the configuration set. The default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> sendingEnabled;

  /// Domain that is used to redirect email recipients to an Amazon SES-operated domain. See below. **NOTE:** This functionality is best effort.
  late final Output<ConfigurationSetTrackingOptions?> trackingOptions;

  ConfigurationSet(
    String name, {
    ConfigurationSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ses/configurationSet:ConfigurationSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deliveryOptions =
        registerOutput<ConfigurationSetDeliveryOptions?>('deliveryOptions');
    this.lastFreshStart = registerOutput<String>('lastFreshStart');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.reputationMetricsEnabled =
        registerOutput<bool?>('reputationMetricsEnabled');
    this.sendingEnabled = registerOutput<bool?>('sendingEnabled');
    this.trackingOptions =
        registerOutput<ConfigurationSetTrackingOptions?>('trackingOptions');
  }
}
