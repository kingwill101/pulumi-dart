// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_get_adccatalog_args_doc}
/// Arguments for getADCCatalog.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_get_adccatalog_args_doc}
class GetADCCatalogArgs {
  /// The name of the data catalog in the specified subscription and resource group.
  final pulumi.Input<String> catalogName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetADCCatalogArgs].
  /// [catalogName] The name of the data catalog in the specified subscription and resource group.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetADCCatalogArgs({
    required this.catalogName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetADCCatalogArgs.fromMap(Map<String, dynamic> map) {
    return GetADCCatalogArgs(
      catalogName: (map['catalogName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

