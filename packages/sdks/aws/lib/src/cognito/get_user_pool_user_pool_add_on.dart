// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_pool_user_pool_add_on_advanced_security_additional_flow.dart';

class GetUserPoolUserPoolAddOn {
  /// A block of the threat protection configuration options for additional authentication types in your user pool, including custom authentication. Detailed below.
  final pulumi.Input<
    List<GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow>
  >
  advancedSecurityAdditionalFlows;

  /// Mode for advanced security.
  final pulumi.Input<String> advancedSecurityMode;

  /// Creates a new [GetUserPoolUserPoolAddOn].
  /// [advancedSecurityAdditionalFlows] A block of the threat protection configuration options for additional authentication types in your user pool, including custom authentication. Detailed below.
  /// [advancedSecurityMode] Mode for advanced security.
  GetUserPoolUserPoolAddOn({
    required this.advancedSecurityAdditionalFlows,
    required this.advancedSecurityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSecurityAdditionalFlows':
          pulumi.Input.mapInputValue<
            List<GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow>,
            List<Map<String, dynamic>>
          >(
            advancedSecurityAdditionalFlows,
            (value) =>
                pulumi.Input.encodeList<
                  GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'advancedSecurityMode': advancedSecurityMode,
    };
  }

  factory GetUserPoolUserPoolAddOn.fromMap(Map<String, dynamic> map) {
    return GetUserPoolUserPoolAddOn(
      advancedSecurityAdditionalFlows: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow
        >(
          map['advancedSecurityAdditionalFlows']!,
          (value) =>
              GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      advancedSecurityMode: pulumi.Input.fromValue(
        map['advancedSecurityMode'] as String,
      ),
    );
  }
}
