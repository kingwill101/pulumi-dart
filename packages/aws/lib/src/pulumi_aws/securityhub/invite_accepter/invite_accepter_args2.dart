// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InviteAccepter.
class InviteAccepterArgs2 {
  /// The account ID of the master Security Hub account whose invitation you're accepting.
  final Input<String> masterId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  InviteAccepterArgs2({
    required this.masterId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['masterId'] = masterId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InviteAccepterArgs2.fromMap(Map<String, dynamic> map) {
    return InviteAccepterArgs2(
      masterId: Input.asInput<String>(map['masterId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
