// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_get_enterprise_proxy_accesses_get_enterprise_proxy_accesses_args_doc}
/// Arguments for getEnterpriseProxyAccesses.
/// {@endtemplate}
/// {@macro pulumi_dms_get_enterprise_proxy_accesses_get_enterprise_proxy_accesses_args_doc}
class GetEnterpriseProxyAccessesArgs {
  final pulumi.Input<bool>? enableDetails;
  /// A list of Proxy Access IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the security agent.
  final pulumi.Input<String> proxyId;

  /// Creates a new [GetEnterpriseProxyAccessesArgs].
  /// [enableDetails] Optional.
  /// [ids] A list of Proxy Access IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [proxyId] The ID of the security agent.
  GetEnterpriseProxyAccessesArgs({
    this.enableDetails,
    this.ids,
    this.outputFile,
    required this.proxyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'proxyId': proxyId,
    };
  }

  factory GetEnterpriseProxyAccessesArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseProxyAccessesArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      proxyId: (map['proxyId'] as String).input(),
    );
  }
}

