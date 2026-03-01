// ignore_for_file: unused_element, unnecessary_cast

import 'origin_response.dart';

/// A single scope of the investigation
class InvestigationScopeResponse {
  /// The ID of the scope of the investigation - either an Azure alert ID or an Azure resource ID
  final String id;
  /// The origin of the scope
  final OriginResponse origin;
  /// The relevance of the scope
  final String? relevance;

  /// Creates a new [InvestigationScopeResponse].
  /// [id] The ID of the scope of the investigation - either an Azure alert ID or an Azure resource ID
  /// [origin] The origin of the scope
  /// [relevance] The relevance of the scope
  InvestigationScopeResponse({
    required this.id,
    required this.origin,
    this.relevance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'origin': origin.toMap(),
      'relevance': ?relevance,
    };
  }

  factory InvestigationScopeResponse.fromMap(Map<String, dynamic> map) {
    return InvestigationScopeResponse(
      id: map['id'] as String,
      origin: OriginResponse.fromMap((map['origin'] as Map).cast<String, dynamic>()),
      relevance: map['relevance'] == null ? null : map['relevance'] as String,
    );
  }
}

