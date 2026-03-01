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
    String? dedicatedHostId,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
  }) :
      dedicatedHostId = pulumi.Input.asOptionalInput<String>(dedicatedHostId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

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
      dedicatedHostId: map['dedicatedHostId'] == null ? null : map['dedicatedHostId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
    );
  }
}

