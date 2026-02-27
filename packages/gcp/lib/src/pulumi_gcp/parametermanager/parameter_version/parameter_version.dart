import 'package:pulumi/pulumi.dart';
import 'parameter_version_args.dart';

/// A Parameter Version resource that stores the actual value of the parameter.
///
///
/// To get more information about ParameterVersion, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions)
///
///
///
/// ## Example Usage
///
/// ### Parameter Version Basic
///
///
///
/// ### Parameter Version With Json Format
///
///
///
/// ### Parameter Version With Kms Key
///
///
///
/// ### Parameter Version With Json Format With File
///
///
///
/// ### Parameter Version With Yaml Format With File
///
///
///
///
/// ## Import
///
/// ParameterVersion can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
///
/// When using the `pulumi import` command, ParameterVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:parametermanager/parameterVersion:ParameterVersion default projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}
/// ```
class ParameterVersion extends CustomResource {
  /// The time at which the Parameter Version was created.
  late final Output<String> createTime;

  /// The current state of Parameter Version. This field is only applicable for updating Parameter Version.
  late final Output<bool?> disabled;

  /// The resource name of the Cloud KMS CryptoKeyVersion used to decrypt parameter version payload. Format
  /// `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  late final Output<String> kmsKeyVersion;

  /// The resource name of the Parameter Version. Format:
  /// `projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  late final Output<String> name;

  /// Parameter Manager Parameter resource.
  late final Output<String> parameter;

  /// The Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final Output<String> parameterData;

  /// Version ID of the Parameter Version Resource. This must be unique within the Parameter.
  late final Output<String> parameterVersionId;

  /// The time at which the Parameter Version was updated.
  late final Output<String> updateTime;

  ParameterVersion(
    String name, {
    ParameterVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/parameterVersion:ParameterVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.disabled = registerOutput<bool?>('disabled');
    this.kmsKeyVersion = registerOutput<String>('kmsKeyVersion');
    this.name = registerOutput<String>('name');
    this.parameter = registerOutput<String>('parameter');
    this.parameterData = registerOutput<String>('parameterData');
    this.parameterVersionId = registerOutput<String>('parameterVersionId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
