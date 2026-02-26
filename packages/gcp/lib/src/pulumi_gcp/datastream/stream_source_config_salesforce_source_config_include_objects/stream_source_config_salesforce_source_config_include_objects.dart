// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_salesforce_source_config_include_objects_object/stream_source_config_salesforce_source_config_include_objects_object.dart';

class StreamSourceConfigSalesforceSourceConfigIncludeObjects {
  /// Salesforce objects in Salesforce Org.
  /// Structure is documented below.
  final List<StreamSourceConfigSalesforceSourceConfigIncludeObjectsObject>
      objects;

  StreamSourceConfigSalesforceSourceConfigIncludeObjects({
    required this.objects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objects'] = Input.encodeList<
        StreamSourceConfigSalesforceSourceConfigIncludeObjectsObject,
        Map<String, dynamic>>(objects, (value) => value.toMap());
    return map;
  }

  factory StreamSourceConfigSalesforceSourceConfigIncludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSalesforceSourceConfigIncludeObjects(
      objects: Input.decodeList<
              StreamSourceConfigSalesforceSourceConfigIncludeObjectsObject>(
          map['objects'],
          (value) =>
              StreamSourceConfigSalesforceSourceConfigIncludeObjectsObject
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
