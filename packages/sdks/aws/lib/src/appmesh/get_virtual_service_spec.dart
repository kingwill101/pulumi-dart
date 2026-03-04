// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_service_spec_provider.dart';

class GetVirtualServiceSpec {
  final pulumi.Input<List<GetVirtualServiceSpecProvider>> providers;

  /// Creates a new [GetVirtualServiceSpec].
  /// [providers] Required.
  GetVirtualServiceSpec({required this.providers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providers':
          pulumi.Input.mapInputValue<
            List<GetVirtualServiceSpecProvider>,
            List<Map<String, dynamic>>
          >(
            providers,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualServiceSpecProvider,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetVirtualServiceSpec.fromMap(Map<String, dynamic> map) {
    return GetVirtualServiceSpec(
      providers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetVirtualServiceSpecProvider>(
          map['providers']!,
          (value) => GetVirtualServiceSpecProvider.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
