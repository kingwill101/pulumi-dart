// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_service_spec_provider.dart';

class GetVirtualServiceSpec {
  final List<GetVirtualServiceSpecProvider> providers;

  /// Creates a new [GetVirtualServiceSpec].
  /// [providers] Required.
  GetVirtualServiceSpec({
    required this.providers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['providers'] = pulumi.Input.encodeList<GetVirtualServiceSpecProvider,
        Map<String, dynamic>>(providers, (value) => value.toMap());
    return map;
  }

  factory GetVirtualServiceSpec.fromMap(Map<String, dynamic> map) {
    return GetVirtualServiceSpec(
      providers: pulumi.Input.decodeList<GetVirtualServiceSpecProvider>(
          map['providers'],
          (value) => GetVirtualServiceSpecProvider.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
