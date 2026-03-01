// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_provisioned_products_get_provisioned_products_args_doc}
/// Arguments for getProvisionedProducts.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_provisioned_products_get_provisioned_products_args_doc}
class GetProvisionedProductsArgs {
  /// The access filter.
  final pulumi.Input<String>? accessLevelFilter;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Provisioned Product IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Product name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The field that is used to sort the queried data.
  final pulumi.Input<String>? sortBy;
  /// The sorting method.
  final pulumi.Input<String>? sortOrder;

  /// Creates a new [GetProvisionedProductsArgs].
  /// [accessLevelFilter] The access filter.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Provisioned Product IDs.
  /// [nameRegex] A regex string to filter results by Product name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [sortBy] The field that is used to sort the queried data.
  /// [sortOrder] The sorting method.
  GetProvisionedProductsArgs({
    pulumi.Output<String>? accessLevelFilter,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? sortBy,
    pulumi.Output<String>? sortOrder,
  }) :
      accessLevelFilter = pulumi.Input.asOptionalInput<String>(accessLevelFilter),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      sortBy = pulumi.Input.asOptionalInput<String>(sortBy),
      sortOrder = pulumi.Input.asOptionalInput<String>(sortOrder);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevelFilter': ?accessLevelFilter,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetProvisionedProductsArgs.fromMap(Map<String, dynamic> map) {
    return GetProvisionedProductsArgs(
      accessLevelFilter: map['accessLevelFilter'] == null ? null : pulumi.Output.create<String>(map['accessLevelFilter'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      sortBy: map['sortBy'] == null ? null : pulumi.Output.create<String>(map['sortBy'] as String),
      sortOrder: map['sortOrder'] == null ? null : pulumi.Output.create<String>(map['sortOrder'] as String),
    );
  }
}

