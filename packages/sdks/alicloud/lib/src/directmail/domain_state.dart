// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// Domain, length `1` to `50`, including numbers or capitals or lowercase letters or `.` or `-`
  final pulumi.Input<String>? domainName;

  /// The status of the domain name. Valid values:`0` to `4`. `0`:Available, Passed. `1`: Unavailable, No passed. `2`: Available, cname no passed, icp no passed. `3`: Available, icp no passed. `4`: Available, cname no passed.
  final pulumi.Input<String>? status;

  /// Creates a new [DomainState].
  /// [domainName] Domain, length `1` to `50`, including numbers or capitals or lowercase letters or `.` or `-`
  /// [status] The status of the domain name. Valid values:`0` to `4`. `0`:Available, Passed. `1`: Unavailable, No passed. `2`: Available, cname no passed, icp no passed. `3`: Available, icp no passed. `4`: Available, cname no passed.
  DomainState({this.domainName, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domainName': ?domainName, 'status': ?status};
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
