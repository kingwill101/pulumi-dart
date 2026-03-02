// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_address_pools_get_address_pools_args_doc}
/// Arguments for getAddressPools.
/// {@endtemplate}
/// {@macro pulumi_dns_get_address_pools_get_address_pools_args_doc}
class GetAddressPoolsArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Address Pool IDs.
  final pulumi.Input<List<String>>? ids;
  /// The id of the instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Address Pool name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAddressPoolsArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Address Pool IDs.
  /// [instanceId] The id of the instance.
  /// [nameRegex] A regex string to filter results by Address Pool name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAddressPoolsArgs({
    this.enableDetails,
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetAddressPoolsArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressPoolsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

