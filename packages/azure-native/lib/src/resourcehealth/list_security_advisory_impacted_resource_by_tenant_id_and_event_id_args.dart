// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcehealth_list_security_advisory_impacted_resource_by_tenant_id_and_event_id_args_doc}
/// Arguments for listSecurityAdvisoryImpactedResourceByTenantIdAndEventId.
/// {@endtemplate}
/// {@macro pulumi_resourcehealth_list_security_advisory_impacted_resource_by_tenant_id_and_event_id_args_doc}
class ListSecurityAdvisoryImpactedResourceByTenantIdAndEventIdArgs {
  /// Event Id which uniquely identifies ServiceHealth event.
  final pulumi.Input<String> eventTrackingId;
  /// The filter to apply on the operation. For more information please see https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
  final pulumi.Input<String>? filter;

  /// Creates a new [ListSecurityAdvisoryImpactedResourceByTenantIdAndEventIdArgs].
  /// [eventTrackingId] Event Id which uniquely identifies ServiceHealth event.
  /// [filter] The filter to apply on the operation. For more information please see https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
  ListSecurityAdvisoryImpactedResourceByTenantIdAndEventIdArgs({
    required String eventTrackingId,
    String? filter,
  }) :
      eventTrackingId = pulumi.Input.asInput<String>(eventTrackingId),
      filter = pulumi.Input.asOptionalInput<String>(filter);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTrackingId': eventTrackingId,
      'filter': ?filter,
    };
  }

  factory ListSecurityAdvisoryImpactedResourceByTenantIdAndEventIdArgs.fromMap(Map<String, dynamic> map) {
    return ListSecurityAdvisoryImpactedResourceByTenantIdAndEventIdArgs(
      eventTrackingId: map['eventTrackingId'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
    );
  }
}

