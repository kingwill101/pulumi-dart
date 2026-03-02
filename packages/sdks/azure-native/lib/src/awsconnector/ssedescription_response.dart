// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssestatus_enum_value_response.dart';

/// Definition of SSEDescription
class SSEDescriptionResponse {
  /// <p>The current state of server-side encryption:</p> <ul> <li> <p> <code>ENABLING</code> - Server-side encryption is being enabled.</p> </li> <li> <p> <code>ENABLED</code> - Server-side encryption is enabled.</p> </li> <li> <p> <code>DISABLING</code> - Server-side encryption is being disabled.</p> </li> <li> <p> <code>DISABLED</code> - Server-side encryption is disabled.</p> </li> </ul>
  final pulumi.Input<SSEStatusEnumValueResponse>? status;

  /// Creates a new [SSEDescriptionResponse].
  /// [status] <p>The current state of server-side encryption:</p> <ul> <li> <p> <code>ENABLING</code> - Server-side encryption is being enabled.</p> </li> <li> <p> <code>ENABLED</code> - Server-side encryption is enabled.</p> </li> <li> <p> <code>DISABLING</code> - Server-side encryption is being disabled.</p> </li> <li> <p> <code>DISABLED</code> - Server-side encryption is disabled.</p> </li> </ul>
  SSEDescriptionResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?pulumi.Input.mapOptionalInputValue<SSEStatusEnumValueResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory SSEDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return SSEDescriptionResponse(
      status: map['status'] == null ? null : (SSEStatusEnumValueResponse.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

