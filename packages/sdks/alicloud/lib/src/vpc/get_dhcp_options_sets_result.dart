// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dhcp_options_sets_set.dart';

/// Result data returned by getDhcpOptionsSets.
class GetDhcpOptionsSetsResult {
  final String? dhcpOptionsSetName;
  final String? domainName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetDhcpOptionsSetsSet> sets;
  final String? status;

  /// Creates a new [GetDhcpOptionsSetsResult].
  /// [dhcpOptionsSetName] Optional.
  /// [domainName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [sets] Required.
  /// [status] Optional.
  GetDhcpOptionsSetsResult({
    this.dhcpOptionsSetName,
    this.domainName,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.sets,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpOptionsSetName': ?dhcpOptionsSetName,
      'domainName': ?domainName,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'sets': pulumi.Input.encodeList<GetDhcpOptionsSetsSet, Map<String, dynamic>>(sets, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetDhcpOptionsSetsResult.fromMap(Map<String, dynamic> map) {
    return GetDhcpOptionsSetsResult(
      dhcpOptionsSetName: map['dhcpOptionsSetName'] == null ? null : map['dhcpOptionsSetName'] as String,
      domainName: map['domainName'] == null ? null : map['domainName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      sets: pulumi.Input.decodeList<GetDhcpOptionsSetsSet>(map['sets'], (value) => GetDhcpOptionsSetsSet.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

