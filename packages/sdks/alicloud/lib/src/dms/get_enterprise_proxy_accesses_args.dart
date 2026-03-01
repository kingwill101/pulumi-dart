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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> proxyId,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      proxyId = pulumi.Input.asInput<String>(proxyId);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      proxyId: pulumi.Output.create<String>(map['proxyId'] as String),
    );
  }
}

