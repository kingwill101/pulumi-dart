// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUserPoolClient.
class GetUserPoolClientArgs {
  /// Client Id of the user pool.
  final pulumi.Input<String> clientId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// User pool the client belongs to.
  final pulumi.Input<String> userPoolId;

  GetUserPoolClientArgs({
    required this.clientId,
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory GetUserPoolClientArgs.fromMap(Map<String, dynamic> map) {
    return GetUserPoolClientArgs(
      clientId: pulumi.Input.asInput<String>(map['clientId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      userPoolId: pulumi.Input.asInput<String>(map['userPoolId']),
    );
  }
}
