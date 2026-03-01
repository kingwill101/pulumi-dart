// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_additional_certificates_get_additional_certificates_args_doc}
/// Arguments for getAdditionalCertificates.
/// {@endtemplate}
/// {@macro pulumi_ga_get_additional_certificates_get_additional_certificates_args_doc}
class GetAdditionalCertificatesArgs {
  /// The ID of the GA instance.
  final pulumi.Input<String> acceleratorId;
  /// A list of Additional Certificate IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the listener. Only HTTPS listeners support this parameter.
  final pulumi.Input<String> listenerId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAdditionalCertificatesArgs].
  /// [acceleratorId] The ID of the GA instance.
  /// [ids] A list of Additional Certificate IDs.
  /// [listenerId] The ID of the listener. Only HTTPS listeners support this parameter.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAdditionalCertificatesArgs({
    required String acceleratorId,
    List<String>? ids,
    required String listenerId,
    String? outputFile,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      listenerId = pulumi.Input.asInput<String>(listenerId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'ids': ?ids,
      'listenerId': listenerId,
      'outputFile': ?outputFile,
    };
  }

  factory GetAdditionalCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetAdditionalCertificatesArgs(
      acceleratorId: map['acceleratorId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      listenerId: map['listenerId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

