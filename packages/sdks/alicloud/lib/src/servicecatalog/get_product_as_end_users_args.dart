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
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      sortBy: map['sortBy'] == null ? null : (map['sortBy']! as String).input(),
      sortOrder: map['sortOrder'] == null ? null : (map['sortOrder']! as String).input(),
    );
  }
}

