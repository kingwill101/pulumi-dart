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
  GetHavipsArgs({this.ids, this.nameRegex, this.outputFile, this.status});

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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
