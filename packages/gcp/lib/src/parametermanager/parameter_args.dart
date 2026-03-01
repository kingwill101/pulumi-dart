// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_parameter_parameter_args_doc}
/// The set of arguments for Parameter.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_parameter_parameter_args_doc}
class ParameterArgs {
  /// The format type of the parameter resource.
  /// Default value is `UNFORMATTED`.
  /// Possible values are: `UNFORMATTED`, `YAML`, `JSON`.
  final pulumi.Input<String>? format;

  /// The resource name of the Cloud KMS CryptoKey used to encrypt parameter version payload. Format
  /// `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  final pulumi.Input<String>? kmsKey;

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
  final pulumi.Input<Map<String, String>>? labels;

  /// This must be unique within the project.
  final pulumi.Input<String> parameterId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ParameterArgs].
  /// [format] The format type of the parameter resource.
  /// [kmsKey] The resource name of the Cloud KMS CryptoKey used to encrypt parameter version payload. Format
  /// [labels] The labels assigned to this Parameter.
  /// [parameterId] This must be unique within the project.
  /// [project] The ID of the project in which the resource belongs.
  ParameterArgs({
    String? format,
    String? kmsKey,
    Map<String, String>? labels,
    required String parameterId,
    String? project,
  }) : format = pulumi.Input.asOptionalInput<String>(format),
       kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       parameterId = pulumi.Input.asInput<String>(parameterId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'parameterId': parameterId,
      'project': ?project,
    };
  }

  factory ParameterArgs.fromMap(Map<String, dynamic> map) {
    return ParameterArgs(
      format: map['format'] == null ? null : map['format'] as String,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      parameterId: map['parameterId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
