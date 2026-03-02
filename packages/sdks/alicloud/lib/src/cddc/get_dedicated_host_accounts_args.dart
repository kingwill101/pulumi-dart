// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cddc_get_dedicated_host_accounts_get_dedicated_host_accounts_args_doc}
/// Arguments for getDedicatedHostAccounts.
/// {@endtemplate}
/// {@macro pulumi_cddc_get_dedicated_host_accounts_get_dedicated_host_accounts_args_doc}
class GetDedicatedHostAccountsArgs {
  /// The ID of the host.
  final pulumi.Input<String>? dedicatedHostId;
  /// A list of Dedicated Host Account IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Account name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetDedicatedHostAccountsArgs].
  /// [dedicatedHostId] The ID of the host.
  /// [ids] A list of Dedicated Host Account IDs.
  /// [nameRegex] A regex string to filter results by Account name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetDedicatedHostAccountsArgs({
    this.dedicatedHostId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostId': ?dedicatedHostId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetDedicatedHostAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostAccountsArgs(
      dedicatedHostId: map['dedicatedHostId'] == null ? null : (map['dedicatedHostId']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
    );
  }
}

