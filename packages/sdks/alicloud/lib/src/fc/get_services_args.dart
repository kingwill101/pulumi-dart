// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_get_services_get_services_args_doc}
/// Arguments for getServices.
/// {@endtemplate}
/// {@macro pulumi_fc_get_services_get_services_args_doc}
class GetServicesArgs {
  /// A list of FC services ids.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by FC service name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetServicesArgs].
  /// [ids] A list of FC services ids.
  /// [nameRegex] A regex string to filter results by FC service name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetServicesArgs({this.ids, this.nameRegex, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetServicesArgs.fromMap(Map<String, dynamic> map) {
    return GetServicesArgs(
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
    );
  }
}
