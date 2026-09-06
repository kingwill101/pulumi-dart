// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bookshelf_properties.dart';

/// {@template pulumi_discovery_bookshelf_args_doc}
/// The set of arguments for Bookshelf.
/// {@endtemplate}
/// {@macro pulumi_discovery_bookshelf_args_doc}
class BookshelfArgs {
  /// The name of the Bookshelf
  final pulumi.Input<String?>? bookshelfName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<BookshelfProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [BookshelfArgs].
  /// [bookshelfName] The name of the Bookshelf
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const BookshelfArgs({
    this.bookshelfName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookshelfName': ?bookshelfName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<BookshelfProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory BookshelfArgs.fromMap(Map<String, dynamic> map) {
    return BookshelfArgs(
      bookshelfName: (() { final guardedValue = map['bookshelfName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BookshelfProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
