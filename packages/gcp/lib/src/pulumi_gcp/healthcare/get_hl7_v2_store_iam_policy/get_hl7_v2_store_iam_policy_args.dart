// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHl7V2StoreIamPolicy.
class GetHl7V2StoreIamPolicyArgs {
  /// The HL7v2 store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{hl7_v2_store_name}` or
  /// `{location_name}/{dataset_name}/{hl7_v2_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final Input<String> hl7V2StoreId;

  GetHl7V2StoreIamPolicyArgs({
    required this.hl7V2StoreId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hl7V2StoreId'] = hl7V2StoreId;
    return map;
  }

  factory GetHl7V2StoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetHl7V2StoreIamPolicyArgs(
      hl7V2StoreId: Input.asInput<String>(map['hl7V2StoreId']),
    );
  }
}
