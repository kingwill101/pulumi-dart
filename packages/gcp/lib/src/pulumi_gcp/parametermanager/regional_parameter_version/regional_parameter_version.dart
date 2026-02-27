import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_parameter_version_args.dart';

/// A Regional Parameter Version resource that stores the actual value of the regional parameter.
///
///
/// To get more information about RegionalParameterVersion, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions)
///
///
///
/// ## Example Usage
///
/// ### Regional Parameter Version Basic
///
///
///
/// ### Regional Parameter Version With Json Format
///
///
///
/// ### Regional Parameter Version With Kms Key
///
///
///
/// ### Regional Parameter Version With Json Format With File
///
///
///
/// ### Regional Parameter Version With Yaml Format With File
///
///
///
///
/// ## Import
///
/// RegionalParameterVersion can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
///
/// When using the `pulumi import` command, RegionalParameterVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:parametermanager/regionalParameterVersion:RegionalParameterVersion default projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}/versions/{{parameter_version_id}}
/// ```
class RegionalParameterVersion extends pulumi.CustomResource {
  /// The time at which the Regional Parameter Version was created.
  late final pulumi.Output<String> createTime;

  /// The current state of Regional Parameter Version. This field is only applicable for updating Regional Parameter Version.
  late final pulumi.Output<bool?> disabled;

  /// The resource name of the Cloud KMS CryptoKeyVersion used to decrypt regional parameter version payload. Format
  /// `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  late final pulumi.Output<String> kmsKeyVersion;

  /// Location of Parameter Manager Regional parameter resource.
  late final pulumi.Output<String> location;

  /// The resource name of the Regional Parameter Version. Format:
  /// `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  late final pulumi.Output<String> name;

  /// Parameter Manager Regional Parameter resource.
  late final pulumi.Output<String> parameter;

  /// The Regional Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> parameterData;

  /// Version ID of the Regional Parameter Version Resource. This must be unique within the Regional Parameter.
  late final pulumi.Output<String> parameterVersionId;

  /// The time at which the Regional Parameter Version was updated.
  late final pulumi.Output<String> updateTime;

  RegionalParameterVersion(
    String name, {
    RegionalParameterVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/regionalParameterVersion:RegionalParameterVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.disabled = registerOutput<bool?>('disabled');
    this.kmsKeyVersion = registerOutput<String>('kmsKeyVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parameter = registerOutput<String>('parameter');
    this.parameterData = registerOutput<String>('parameterData');
    this.parameterVersionId = registerOutput<String>('parameterVersionId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
