// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_books_book.dart';

/// Result data returned by getAddressBooks.
class GetAddressBooksResult {
  /// A list of Cloud Firewall Address Books. Each element contains the following attributes:
  final List<GetAddressBooksBook> books;
  /// The type of the Address Book.
  final String? groupType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Address Book names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetAddressBooksResult].
  /// [books] A list of Cloud Firewall Address Books. Each element contains the following attributes:
  /// [groupType] The type of the Address Book.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Address Book names.
  /// [outputFile] Optional.
  GetAddressBooksResult({
    required this.books,
    this.groupType,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'books': pulumi.Input.encodeList<GetAddressBooksBook, Map<String, dynamic>>(books, (value) => value.toMap()),
      'groupType': ?groupType,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetAddressBooksResult.fromMap(Map<String, dynamic> map) {
    return GetAddressBooksResult(
      books: pulumi.Input.decodeList<GetAddressBooksBook>(map['books'], (value) => GetAddressBooksBook.fromMap((value as Map).cast<String, dynamic>())),
      groupType: map['groupType'] == null ? null : map['groupType'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

