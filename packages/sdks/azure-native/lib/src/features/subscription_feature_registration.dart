import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_feature_registration_args.dart';
import 'subscription_feature_registration_response_properties.dart';

/// Subscription feature registration details
///
/// Uses Azure REST API version 2021-07-01. In version 2.x of the Azure Native provider, it used API version 2021-07-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates a feature registration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subscriptionFeatureRegistration = new AzureNative.Features.SubscriptionFeatureRegistration("subscriptionFeatureRegistration", new()
///     {
///         FeatureName = "testFeature",
///         Properties = null,
///         ProviderNamespace = "subscriptionFeatureRegistrationGroupTestRG",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	features "github.com/pulumi/pulumi-azure-native-sdk/features/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := features.NewSubscriptionFeatureRegistration(ctx, "subscriptionFeatureRegistration", &features.SubscriptionFeatureRegistrationArgs{
/// 			FeatureName:       pulumi.String("testFeature"),
/// 			Properties:        &features.SubscriptionFeatureRegistrationPropertiesArgs{},
/// 			ProviderNamespace: pulumi.String("subscriptionFeatureRegistrationGroupTestRG"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_features_subscriptionfeatureregistration" "subscriptionFeatureRegistration" {
///   feature_name       = "testFeature"
///   properties         = {}
///   provider_namespace = "subscriptionFeatureRegistrationGroupTestRG"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.features.SubscriptionFeatureRegistration;
/// import com.pulumi.azurenative.features.SubscriptionFeatureRegistrationArgs;
/// import com.pulumi.azurenative.features.inputs.SubscriptionFeatureRegistrationPropertiesArgs;
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
///         var subscriptionFeatureRegistration = new SubscriptionFeatureRegistration("subscriptionFeatureRegistration", SubscriptionFeatureRegistrationArgs.builder()
///             .featureName("testFeature")
///             .properties(SubscriptionFeatureRegistrationPropertiesArgs.builder()
///                 .build())
///             .providerNamespace("subscriptionFeatureRegistrationGroupTestRG")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const subscriptionFeatureRegistration = new azure_native.features.SubscriptionFeatureRegistration("subscriptionFeatureRegistration", {
///     featureName: "testFeature",
///     properties: {},
///     providerNamespace: "subscriptionFeatureRegistrationGroupTestRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// subscription_feature_registration = azure_native.features.SubscriptionFeatureRegistration("subscriptionFeatureRegistration",
///     feature_name="testFeature",
///     properties={},
///     provider_namespace="subscriptionFeatureRegistrationGroupTestRG")
///
/// ```
///
/// ```yaml
/// resources:
///   subscriptionFeatureRegistration:
///     type: azure-native:features:SubscriptionFeatureRegistration
///     properties:
///       featureName: testFeature
///       properties: {}
///       providerNamespace: subscriptionFeatureRegistrationGroupTestRG
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:features:SubscriptionFeatureRegistration testFeature /subscriptions/{subscriptionId}/providers/Microsoft.Features/featureProviders/{providerNamespace}/subscriptionFeatureRegistrations/{featureName}
/// ```
class SubscriptionFeatureRegistration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Azure resource name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<SubscriptionFeatureRegistrationResponseProperties> properties;
  /// Azure resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [SubscriptionFeatureRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionFeatureRegistration]. {@macro pulumi_features_subscription_feature_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionFeatureRegistration(
    String name, {
    SubscriptionFeatureRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:features:SubscriptionFeatureRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SubscriptionFeatureRegistrationResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionFeatureRegistrationResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [SubscriptionFeatureRegistration] resource.
  SubscriptionFeatureRegistration.reference(String urn)
    : super(
        'azure-native:features:SubscriptionFeatureRegistration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SubscriptionFeatureRegistrationResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionFeatureRegistrationResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
