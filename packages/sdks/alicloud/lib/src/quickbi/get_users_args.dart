// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quickbi_get_users_get_users_args_doc}
/// Arguments for getUsers.
/// {@endtemplate}
/// {@macro pulumi_quickbi_get_users_get_users_args_doc}
class GetUsersArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of User IDs.
  final pulumi.Input<List<String>>? ids;
  /// The keywords of the nicknames or usernames of the members of the organization.
  final pulumi.Input<String>? keyword;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetUsersArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of User IDs.
  /// [keyword] The keywords of the nicknames or usernames of the members of the organization.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetUsersArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? keyword,
    pulumi.Output<String>? outputFile,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      keyword = pulumi.Input.asOptionalInput<String>(keyword),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'keyword': ?keyword,
      'outputFile': ?outputFile,
    };
  }

  factory GetUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetUsersArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      keyword: map['keyword'] == null ? null : pulumi.Output.create<String>(map['keyword'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

