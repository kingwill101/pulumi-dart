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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? sortBy,
    pulumi.Output<String>? sortOrder,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      sortBy = pulumi.Input.asOptionalInput<String>(sortBy),
      sortOrder = pulumi.Input.asOptionalInput<String>(sortOrder);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      sortBy: map['sortBy'] == null ? null : pulumi.Output.create<String>(map['sortBy'] as String),
      sortOrder: map['sortOrder'] == null ? null : pulumi.Output.create<String>(map['sortOrder'] as String),
    );
  }
}

