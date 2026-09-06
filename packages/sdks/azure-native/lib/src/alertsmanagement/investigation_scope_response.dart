// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_response.dart';

/// A single scope of the investigation
class InvestigationScopeResponse {
  /// The ID of the scope of the investigation - either an Azure alert ID or an Azure resource ID
  final pulumi.Input<String> id;
  /// The origin of the scope
  final pulumi.Input<OriginResponse> origin;
  /// The relevance of the scope
  final pulumi.Input<String?>? relevance;

  /// Creates a new [InvestigationScopeResponse].
  /// [id] The ID of the scope of the investigation - either an Azure alert ID or an Azure resource ID
  /// [origin] The origin of the scope
  /// [relevance] The relevance of the scope
  const InvestigationScopeResponse({
    required this.id,
    required this.origin,
    this.relevance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'origin': pulumi.Input.mapInputValue<OriginResponse, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'relevance': ?relevance,
    };
  }

  factory InvestigationScopeResponse.fromMap(Map<String, dynamic> map) {
    return InvestigationScopeResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      origin: pulumi.Input.fromValue(OriginResponse.fromMap((map['origin']! as Map).cast<String, dynamic>())),
      relevance: (() { final guardedValue = map['relevance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
