// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDelegatedServicesDelegatedService {
  /// The date that the account became a delegated administrator for this service.
  final pulumi.Input<String> delegationEnabledDate;
  /// The name of an AWS service that can request an operation for the specified service.
  final pulumi.Input<String> servicePrincipal;

  /// Creates a new [GetDelegatedServicesDelegatedService].
  /// [delegationEnabledDate] The date that the account became a delegated administrator for this service.
  /// [servicePrincipal] The name of an AWS service that can request an operation for the specified service.
  GetDelegatedServicesDelegatedService({
    required this.delegationEnabledDate,
    required this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegationEnabledDate': delegationEnabledDate,
      'servicePrincipal': servicePrincipal,
    };
  }

  factory GetDelegatedServicesDelegatedService.fromMap(Map<String, dynamic> map) {
    return GetDelegatedServicesDelegatedService(
      delegationEnabledDate: pulumi.Input.fromValue(map['delegationEnabledDate'] as String),
      servicePrincipal: pulumi.Input.fromValue(map['servicePrincipal'] as String),
    );
  }
}

