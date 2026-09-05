import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_args.dart';
import 'configuration_set_delivery_options.dart';
import 'configuration_set_state.dart';
import 'configuration_set_tracking_options.dart';

/// Provides an SES configuration set resource.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
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
///     var test = new Aws.Ses.ConfigurationSet("test", new()
///     {
///         Name = "some-configuration-set-test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.NewConfigurationSet(ctx, "test", &ses.ConfigurationSetArgs{
/// 			Name: pulumi.String("some-configuration-set-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ses_configurationset" "test" {
///   name = "some-configuration-set-test"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new ConfigurationSet("test", ConfigurationSetArgs.builder()
///             .name("some-configuration-set-test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ses:ConfigurationSet
///     properties:
///       name: some-configuration-set-test
/// ```
///
///
/// ### Require TLS Connections
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ses.ConfigurationSet("test", {
///     deliveryOptions: {
///         tlsPolicy: "Require",
///     },
///     name: "some-configuration-set-test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ses.ConfigurationSet("test",
///     delivery_options={
///         "tls_policy": "Require",
///     },
///     name="some-configuration-set-test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ses.ConfigurationSet("test", new()
///     {
///         DeliveryOptions = new Aws.Ses.Inputs.ConfigurationSetDeliveryOptionsArgs
///         {
///             TlsPolicy = "Require",
///         },
///         Name = "some-configuration-set-test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.NewConfigurationSet(ctx, "test", &ses.ConfigurationSetArgs{
/// 			DeliveryOptions: &ses.ConfigurationSetDeliveryOptionsArgs{
/// 				TlsPolicy: pulumi.String("Require"),
/// 			},
/// 			Name: pulumi.String("some-configuration-set-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ses_configurationset" "test" {
///   delivery_options = {
///     tls_policy = "Require"
///   }
///   name = "some-configuration-set-test"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new ConfigurationSet("test", ConfigurationSetArgs.builder()
///             .deliveryOptions(ConfigurationSetDeliveryOptionsArgs.builder()
///                 .tlsPolicy("Require")
///                 .build())
///             .name("some-configuration-set-test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ses:ConfigurationSet
///     properties:
///       deliveryOptions:
///         tlsPolicy: Require
///       name: some-configuration-set-test
/// ```
///
///
/// ### Tracking Options
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ses.ConfigurationSet("test", {
///     trackingOptions: {
///         customRedirectDomain: "sub.example.com",
///     },
///     name: "some-configuration-set-test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ses.ConfigurationSet("test",
///     tracking_options={
///         "custom_redirect_domain": "sub.example.com",
///     },
///     name="some-configuration-set-test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ses.ConfigurationSet("test", new()
///     {
///         TrackingOptions = new Aws.Ses.Inputs.ConfigurationSetTrackingOptionsArgs
///         {
///             CustomRedirectDomain = "sub.example.com",
///         },
///         Name = "some-configuration-set-test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.NewConfigurationSet(ctx, "test", &ses.ConfigurationSetArgs{
/// 			TrackingOptions: &ses.ConfigurationSetTrackingOptionsArgs{
/// 				CustomRedirectDomain: pulumi.String("sub.example.com"),
/// 			},
/// 			Name: pulumi.String("some-configuration-set-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ses_configurationset" "test" {
///   tracking_options = {
///     custom_redirect_domain = "sub.example.com"
///   }
///   name = "some-configuration-set-test"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new ConfigurationSet("test", ConfigurationSetArgs.builder()
///             .trackingOptions(ConfigurationSetTrackingOptionsArgs.builder()
///                 .customRedirectDomain("sub.example.com")
///                 .build())
///             .name("some-configuration-set-test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ses:ConfigurationSet
///     properties:
///       trackingOptions:
///         customRedirectDomain: sub.example.com
///       name: some-configuration-set-test
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SES Configuration Sets using their `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ses/configurationSet:ConfigurationSet test some-configuration-set-test
/// ```
class ConfigurationSet extends pulumi.CustomResource {
  /// SES configuration set ARN.
  late final pulumi.Output<String> arn;
  /// Whether messages that use the configuration set are required to use TLS. See below.
  late final pulumi.Output<ConfigurationSetDeliveryOptions?> deliveryOptions;
  /// Date and time at which the reputation metrics for the configuration set were last reset. Resetting these metrics is known as a fresh start.
  late final pulumi.Output<String> lastFreshStart;
  /// Name of the configuration set.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether or not Amazon SES publishes reputation metrics for the configuration set, such as bounce and complaint rates, to Amazon CloudWatch. The default value is `false`.
  late final pulumi.Output<bool?> reputationMetricsEnabled;
  /// Whether email sending is enabled or disabled for the configuration set. The default value is `true`.
  late final pulumi.Output<bool?> sendingEnabled;
  /// Domain that is used to redirect email recipients to an Amazon SES-operated domain. See below. **NOTE:** This functionality is best effort.
  late final pulumi.Output<ConfigurationSetTrackingOptions?> trackingOptions;

  /// Creates a new [ConfigurationSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationSet]. {@macro pulumi_ses_configuration_set_configuration_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationSet(
    String name, {
    ConfigurationSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/configurationSet:ConfigurationSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    deliveryOptions = registerOutput<ConfigurationSetDeliveryOptions?>('deliveryOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetDeliveryOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastFreshStart = registerOutput<String>('lastFreshStart');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    reputationMetricsEnabled = registerOutput<bool?>('reputationMetricsEnabled');
    sendingEnabled = registerOutput<bool?>('sendingEnabled');
    trackingOptions = registerOutput<ConfigurationSetTrackingOptions?>('trackingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetTrackingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ConfigurationSet] resource's state with the given [name] and [id].
  static ConfigurationSet get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConfigurationSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConfigurationSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/configurationSet:ConfigurationSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deliveryOptions = registerOutput<ConfigurationSetDeliveryOptions?>('deliveryOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetDeliveryOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastFreshStart = registerOutput<String>('lastFreshStart');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    reputationMetricsEnabled = registerOutput<bool?>('reputationMetricsEnabled');
    sendingEnabled = registerOutput<bool?>('sendingEnabled');
    trackingOptions = registerOutput<ConfigurationSetTrackingOptions?>('trackingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetTrackingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ConfigurationSet] resource.
  ConfigurationSet.reference(String urn)
    : super(
        'aws:ses/configurationSet:ConfigurationSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    deliveryOptions = registerOutput<ConfigurationSetDeliveryOptions?>('deliveryOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetDeliveryOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastFreshStart = registerOutput<String>('lastFreshStart');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    reputationMetricsEnabled = registerOutput<bool?>('reputationMetricsEnabled');
    sendingEnabled = registerOutput<bool?>('sendingEnabled');
    trackingOptions = registerOutput<ConfigurationSetTrackingOptions?>('trackingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetTrackingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
