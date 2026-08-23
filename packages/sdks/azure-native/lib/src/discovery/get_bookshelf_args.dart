// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discovery_get_bookshelf_args_doc}
/// Arguments for getBookshelf.
/// {@endtemplate}
/// {@macro pulumi_discovery_get_bookshelf_args_doc}
class GetBookshelfArgs {
  /// The name of the Bookshelf
  final pulumi.Input<String> bookshelfName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBookshelfArgs].
  /// [bookshelfName] The name of the Bookshelf
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetBookshelfArgs({
    required this.bookshelfName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookshelfName': bookshelfName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBookshelfArgs.fromMap(Map<String, dynamic> map) {
    return GetBookshelfArgs(
      bookshelfName: pulumi.Input.fromValue(map['bookshelfName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
