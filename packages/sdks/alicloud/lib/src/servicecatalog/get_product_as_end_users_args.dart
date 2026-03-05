// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_product_as_end_users_get_product_as_end_users_args_doc}
/// Arguments for getProductAsEndUsers.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_product_as_end_users_get_product_as_end_users_args_doc}
class GetProductAsEndUsersArgs {
  /// A list of Product As End User IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by product name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? sortBy;
  final pulumi.Input<String>? sortOrder;

  /// Creates a new [GetProductAsEndUsersArgs].
  /// [ids] A list of Product As End User IDs.
  /// [nameRegex] A regex string to filter results by product name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [sortBy] Optional.
  /// [sortOrder] Optional.
  GetProductAsEndUsersArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.sortBy,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetProductAsEndUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetProductAsEndUsersArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortBy: (() { final guardedValue = map['sortBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

