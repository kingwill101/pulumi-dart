// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';

/// The resourceId extended model. This is used to document failed resources with a resourceId and a corresponding error.
class ResourceReferenceExtendedResponse {
  /// The error detail.
  final ErrorDetailResponse? error;
  /// The ARM Resource ID of a resource managed by the deployment stack.
  final String id;

  /// Creates a new [ResourceReferenceExtendedResponse].
  /// [error] The error detail.
  /// [id] The ARM Resource ID of a resource managed by the deployment stack.
  ResourceReferenceExtendedResponse({
    this.error,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error == null ? null : error!.toMap(),
      'id': id,
    };
  }

  factory ResourceReferenceExtendedResponse.fromMap(Map<String, dynamic> map) {
    return ResourceReferenceExtendedResponse(
      error: map['error'] == null ? null : ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
    );
  }
}

