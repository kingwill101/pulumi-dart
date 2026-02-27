import 'package:pulumi/pulumi.dart';
import '../regional_parameter_policy_member/regional_parameter_policy_member.dart';
import 'regional_parameter_args.dart';

/// A Regional Parameter is a logical regional parameter.
///
///
/// To get more information about RegionalParameter, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters)
///
/// ## Example Usage
///
/// ### Regional Parameter Basic
///
///
///
/// ### Regional Parameter With Format
///
///
///
/// ### Regional Parameter With Labels
///
///
///
/// ### Regional Parameter With Kms Key
///
///
///
///
/// ## Import
///
/// RegionalParameter can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}`
///
/// * `{{project}}/{{location}}/{{parameter_id}}`
///
/// * `{{location}}/{{parameter_id}}`
///
/// When using the `pulumi import` command, RegionalParameter can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:parametermanager/regionalParameter:RegionalParameter default projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:parametermanager/regionalParameter:RegionalParameter default {{project}}/{{location}}/{{parameter_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:parametermanager/regionalParameter:RegionalParameter default {{location}}/{{parameter_id}}
/// ```
class RegionalParameter extends CustomResource {
  /// The time at which the regional Parameter was created.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The format type of the regional parameter.
  /// Default value is `UNFORMATTED`.
  /// Possible values are: `UNFORMATTED`, `YAML`, `JSON`.
  late final Output<String?> format;

  /// The resource name of the Cloud KMS CryptoKey used to encrypt regional parameter version payload. Format
  /// `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  late final Output<String?> kmsKey;

  /// The labels assigned to this regional Parameter.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be assigned to a given resource.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the regional parameter. eg us-central1
  late final Output<String> location;

  /// The resource name of the regional Parameter. Format:
  /// `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}`
  late final Output<String> name;

  /// This must be unique within the project.
  late final Output<String> parameterId;

  /// An object containing a unique resource identity tied to the regional parameter.
  /// Structure is documented below.
  late final Output<List<RegionalParameterPolicyMember>> policyMembers;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The time at which the regional Parameter was updated.
  late final Output<String> updateTime;

  RegionalParameter(
    String name, {
    RegionalParameterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/regionalParameter:RegionalParameter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.format = registerOutput<String?>('format');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parameterId = registerOutput<String>('parameterId');
    this.policyMembers =
        registerOutput<List<RegionalParameterPolicyMember>>('policyMembers');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
