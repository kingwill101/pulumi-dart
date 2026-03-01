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
    bool? enableDetails,
    List<String>? ids,
    required String instanceId,
    String? nameRegex,
    String? outputFile,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

