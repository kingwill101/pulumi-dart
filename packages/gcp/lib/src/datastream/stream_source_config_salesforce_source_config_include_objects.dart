// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_salesforce_source_config_include_objects_object.dart';

class StreamSourceConfigSalesforceSourceConfigIncludeObjects {
  /// Salesforce objects in Salesforce Org.
  /// Structure is documented below.
  final List<StreamSourceConfigSalesforceSourceConfigIncludeObjectsObject>
  objects;

  /// Creates a new [StreamSourceConfigSalesforceSourceConfigIncludeObjects].
  /// [objects] Salesforce objects in Salesforce Org.
  StreamSourceConfigSalesforceSourceConfigIncludeObjects({
    required this.objects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objects':
          pulumi.Input.encodeList<
            StreamSourceConfigSalesforceSourceConfigIncludeObjectsObject,
            Map<String, dynamic>
          >(objects, (value) => value.toMap()),
    };
  }

  factory StreamSourceConfigSalesforceSourceConfigIncludeObjects.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigSalesforceSourceConfigIncludeObjects(
      objects:
          pulumi.Input.decodeList<
            StreamSourceConfigSalesforceSourceConfigIncludeObjectsObject
          >(
            map['objects'],
            (value) =>
                StreamSourceConfigSalesforceSourceConfigIncludeObjectsObject.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
