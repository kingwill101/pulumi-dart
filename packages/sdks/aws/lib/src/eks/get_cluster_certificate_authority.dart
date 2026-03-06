// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterCertificateAuthority {
  /// The base64 encoded certificate data required to communicate with your cluster. Add this to the `certificate-authority-data` section of the `kubeconfig` file for your cluster.
  final pulumi.Input<String> data;

  /// Creates a new [GetClusterCertificateAuthority].
  /// [data] The base64 encoded certificate data required to communicate with your cluster. Add this to the `certificate-authority-data` section of the `kubeconfig` file for your cluster.
  const GetClusterCertificateAuthority({
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
    };
  }

  factory GetClusterCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return GetClusterCertificateAuthority(
      data: pulumi.Input.fromValue(map['data'] as String),
    );
  }
}

