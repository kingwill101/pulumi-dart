// ignore_for_file: unused_element, unnecessary_cast

import 'customer_metadata_response.dart';

/// Result data returned by getMarkupRule.
class GetMarkupRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Customer information for the markup rule.
  final CustomerMetadataResponse? customerDetails;
  /// The description of the markup rule.
  final String? description;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  final String? eTag;
  /// Ending date of the markup rule.
  final String? endDate;
  /// Resource Id.
  final String? id;
  /// Resource name.
  final String? name;
  /// The markup percentage of the rule.
  final double? percentage;
  /// Starting date of the markup rule.
  final String? startDate;
  /// Resource type.
  final String? type;

  /// Creates a new [GetMarkupRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customerDetails] Customer information for the markup rule.
  /// [description] The description of the markup rule.
  /// [eTag] eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  /// [endDate] Ending date of the markup rule.
  /// [id] Resource Id.
  /// [name] Resource name.
  /// [percentage] The markup percentage of the rule.
  /// [startDate] Starting date of the markup rule.
  /// [type] Resource type.
  const GetMarkupRuleResult({
    this.azureApiVersion,
    this.customerDetails,
    this.description,
    this.eTag,
    this.endDate,
    this.id,
    this.name,
    this.percentage,
    this.startDate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'customerDetails': ?customerDetails?.toMap(),
      'description': ?description,
      'eTag': ?eTag,
      'endDate': ?endDate,
      'id': ?id,
      'name': ?name,
      'percentage': ?percentage,
      'startDate': ?startDate,
      'type': ?type,
    };
  }

  factory GetMarkupRuleResult.fromMap(Map<String, dynamic> map) {
    return GetMarkupRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerDetails: (() { final guardedValue = map['customerDetails']; if (guardedValue == null) return null; return CustomerMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
