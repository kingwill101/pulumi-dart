import 'package:pulumi/pulumi.dart';
import '../parameter_policy_member/parameter_policy_member.dart';
import 'parameter_args.dart';

/// A Parameter resource is a logical parameter.
///
///
/// To get more information about Parameter, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters)
///
/// ## Example Usage
///
/// ### Parameter Config Basic
///
///
///
/// ### Parameter With Format
///
///
///
/// ### Parameter With Labels
///
///
///
/// ### Parameter With Kms Key
///
///
///
///
/// ## Import
///
/// Parameter can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/parameters/{{parameter_id}}`
///
/// * `{{project}}/{{parameter_id}}`
///
/// * `{{parameter_id}}`
///
/// When using the `pulumi import` command, Parameter can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:parametermanager/parameter:Parameter default projects/{{project}}/locations/global/parameters/{{parameter_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:parametermanager/parameter:Parameter default {{project}}/{{parameter_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:parametermanager/parameter:Parameter default {{parameter_id}}
/// ```
class Parameter extends CustomResource {
  /// The time at which the Parameter was created.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The format type of the parameter resource.
  /// Default value is `UNFORMATTED`.
  /// Possible values are: `UNFORMATTED`, `YAML`, `JSON`.
  late final Output<String?> format;

  /// The resource name of the Cloud KMS CryptoKey used to encrypt parameter version payload. Format
  /// `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  late final Output<String?> kmsKey;

  /// The labels assigned to this Parameter.
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

  /// The resource name of the Parameter. Format:
  /// `projects/{{project}}/locations/global/parameters/{{parameter_id}}`
  late final Output<String> name;

  /// This must be unique within the project.
  late final Output<String> parameterId;

  /// Policy member strings of a Google Cloud resource.
  /// Structure is documented below.
  late final Output<List<ParameterPolicyMember>> policyMembers;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The time at which the Parameter was updated.
  late final Output<String> updateTime;

  Parameter(
    String name, {
    ParameterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/parameter:Parameter',
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
    this.name = registerOutput<String>('name');
    this.parameterId = registerOutput<String>('parameterId');
    this.policyMembers =
        registerOutput<List<ParameterPolicyMember>>('policyMembers');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
