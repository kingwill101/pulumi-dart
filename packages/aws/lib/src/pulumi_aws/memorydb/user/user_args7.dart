// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../user_authentication_mode/user_authentication_mode2.dart';

/// The set of arguments for User.
class UserArgs7 {
  /// Access permissions string used for this user.
  final Input<String> accessString;

  /// Denotes the user's authentication properties. Detailed below.
  final Input<UserAuthenticationMode2> authenticationMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Name of the MemoryDB user. Up to 40 characters.
  ///
  /// The following arguments are optional:
  final Input<String> userName;

  UserArgs7({
    required this.accessString,
    required this.authenticationMode,
    this.region,
    this.tags,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessString'] = accessString;
    map['authenticationMode'] =
        Input.mapInputValue<UserAuthenticationMode2, Map<String, dynamic>>(
            authenticationMode, (value) => value.toMap());
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

  factory UserArgs7.fromMap(Map<String, dynamic> map) {
    return UserArgs7(
      accessString: Input.asInput<String>(map['accessString']),
      authenticationMode:
          Input.asInput<UserAuthenticationMode2>(map['authenticationMode']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userName: Input.asInput<String>(map['userName']),
    );
  }
}
