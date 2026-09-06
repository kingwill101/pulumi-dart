import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_args.dart';
import 'app_resource_properties_response.dart';
import 'managed_identity_properties_response.dart';
import 'system_data_response.dart';

/// App resource payload
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:appplatform:App myapp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/apps/{appName}
/// ```
class App extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Managed Identity type of the app resource
  late final pulumi.Output<ManagedIdentityPropertiesResponse?> identity;
  /// The GEO location of the application, always the same with its parent resource
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Properties of the App resource
  late final pulumi.Output<AppResourcePropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [App].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [App]. {@macro pulumi_appplatform_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  App(
    String name, {
    AppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:App',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedIdentityPropertiesResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedIdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AppResourcePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppResourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [App] resource.
  App.reference(String urn)
    : super(
        'azure-native:appplatform:App',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedIdentityPropertiesResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedIdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AppResourcePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppResourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
