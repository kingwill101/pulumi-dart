// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUsers.
class GetUsersArgs2 {
  /// Identity Store ID associated with the Single Sign-On Instance.
  final Input<String> identityStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetUsersArgs2({
    required this.identityStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identityStoreId'] = identityStoreId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetUsersArgs2.fromMap(Map<String, dynamic> map) {
    return GetUsersArgs2(
      identityStoreId: Input.asInput<String>(map['identityStoreId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
