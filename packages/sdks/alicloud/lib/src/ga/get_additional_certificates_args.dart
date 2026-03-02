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
    required this.acceleratorId,
    this.ids,
    required this.listenerId,
    this.outputFile,
  });

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
      acceleratorId: (map['acceleratorId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      listenerId: (map['listenerId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

