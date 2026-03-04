// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_as_end_users_user.dart';

/// Result data returned by getProductAsEndUsers.
class GetProductAsEndUsersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of Product As End User IDs.
  final List<String> ids;
  final String? nameRegex;
  final String? outputFile;
  final String? sortBy;
  final String? sortOrder;

  /// A list of Product As End User Entries. Each element contains the following attributes:
  final List<GetProductAsEndUsersUser> users;

  /// Creates a new [GetProductAsEndUsersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Product As End User IDs.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  /// [sortBy] Optional.
  /// [sortOrder] Optional.
  /// [users] A list of Product As End User Entries. Each element contains the following attributes:
  GetProductAsEndUsersResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    this.outputFile,
    this.sortBy,
    this.sortOrder,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
      'users':
          pulumi.Input.encodeList<
            GetProductAsEndUsersUser,
            Map<String, dynamic>
          >(users, (value) => value.toMap()),
    };
  }

  factory GetProductAsEndUsersResult.fromMap(Map<String, dynamic> map) {
    return GetProductAsEndUsersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sortBy: (() {
        final guardedValue = map['sortBy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sortOrder: (() {
        final guardedValue = map['sortOrder'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      users: pulumi.Input.decodeList<GetProductAsEndUsersUser>(
        map['users']!,
        (value) => GetProductAsEndUsersUser.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
