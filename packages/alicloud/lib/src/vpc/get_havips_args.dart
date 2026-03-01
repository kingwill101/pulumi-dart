// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_havips_get_havips_args_doc}
/// Arguments for getHavips.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_havips_get_havips_args_doc}
class GetHavipsArgs {
  /// A list of Ha Vip IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Ha Vip name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of HaVip instance. Valid value: `Available`, `InUse` and `Pending`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetHavipsArgs].
  /// [ids] A list of Ha Vip IDs.
  /// [nameRegex] A regex string to filter results by Ha Vip name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of HaVip instance. Valid value: `Available`, `InUse` and `Pending`.
  GetHavipsArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetHavipsArgs.fromMap(Map<String, dynamic> map) {
    return GetHavipsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

