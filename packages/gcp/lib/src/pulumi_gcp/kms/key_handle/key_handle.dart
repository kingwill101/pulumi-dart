import 'package:pulumi/pulumi.dart';
import 'key_handle_args.dart';

/// ## Example Usage
///
/// ### Kms Key Handle Basic
///
///
///
///
/// ## Import
///
/// KeyHandle can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/keyHandles/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, KeyHandle can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/keyHandle:KeyHandle default projects/{{project}}/locations/{{location}}/keyHandles/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/keyHandle:KeyHandle default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/keyHandle:KeyHandle default {{location}}/{{name}}
/// ```
class KeyHandle extends CustomResource {
  /// A reference to a Cloud KMS CryptoKey that can be used for CMEK in the requested
  /// product/project/location, for example
  /// `projects/1/locations/us-east1/keyRings/foo/cryptoKeys/bar-ffffff`
  late final Output<String> kmsKey;

  /// The location for the KeyHandle.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  late final Output<String> location;

  /// The resource name for the KeyHandle.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Selector of the resource type where we want to protect resources.
  /// For example, `storage.googleapis.com/Bucket`.
  late final Output<String> resourceTypeSelector;

  KeyHandle(
    String name, {
    KeyHandleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:kms/keyHandle:KeyHandle',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.kmsKey = registerOutput<String>('kmsKey');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.resourceTypeSelector = registerOutput<String>('resourceTypeSelector');
  }
}
