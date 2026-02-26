// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_page_form_parameter/cx_page_form_parameter.dart';

class CxPageForm {
  /// Parameters to collect from the user.
  /// Structure is documented below.
  final List<CxPageFormParameter>? parameters;

  CxPageForm({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] =
          Input.encodeList<CxPageFormParameter, Map<String, dynamic>>(
              parametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory CxPageForm.fromMap(Map<String, dynamic> map) {
    return CxPageForm(
      parameters: map['parameters'] == null
          ? null
          : Input.decodeList<CxPageFormParameter>(
              map['parameters'],
              (value) => CxPageFormParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
