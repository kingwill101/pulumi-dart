// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_authentication_mode/user_authentication_mode_memorydb.dart';

/// The set of arguments for User.
class UserMemorydbArgs {
  /// Access permissions string used for this user.
  final pulumi.Input<String> accessString;

  /// Denotes the user's authentication properties. Detailed below.
  final pulumi.Input<UserAuthenticationModeMemorydb> authenticationMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name of the MemoryDB user. Up to 40 characters.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userName;

  UserMemorydbArgs({
    required this.accessString,
    required this.authenticationMode,
    this.region,
    this.tags,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessString'] = accessString;
    map['authenticationMode'] = pulumi.Input.mapInputValue<
        UserAuthenticationModeMemorydb,
        Map<String, dynamic>>(authenticationMode, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['userName'] = userName;
    return map;
  }

  factory UserMemorydbArgs.fromMap(Map<String, dynamic> map) {
    return UserMemorydbArgs(
      accessString: pulumi.Input.asInput<String>(map['accessString']),
      authenticationMode: pulumi.Input.asInput<UserAuthenticationModeMemorydb>(
          map['authenticationMode']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
