import 'package:pulumi/src/deployment/models.dart' as deployment_models;

final registerPackageRequest = deployment_models.RegisterPackageRequest(
  name: "terraform-provider",
  version: "1.0.1",
  parameterization: deployment_models.Parameterization(
    name: "libvirt",
    version: "0.9.3",
    value: <int>[123, 34, 114, 101, 109, 111, 116, 101, 34, 58, 123, 34, 117, 114, 108, 34, 58, 34, 114, 101, 103, 105, 115, 116, 114, 121, 46, 111, 112, 101, 110, 116, 111, 102, 117, 46, 111, 114, 103, 47, 100, 109, 97, 99, 118, 105, 99, 97, 114, 47, 108, 105, 98, 118, 105, 114, 116, 34, 44, 34, 118, 101, 114, 115, 105, 111, 110, 34, 58, 34, 48, 46, 57, 46, 51, 34, 125, 125],
  ),
);
