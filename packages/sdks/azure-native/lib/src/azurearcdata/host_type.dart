import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of host for Azure Arc SQL Server
enum HostType implements pulumi.PulumiEnum<String> {
  valueAzureVirtualMachine("Azure Virtual Machine"),
  valueAzureVMWareVirtualMachine("Azure VMWare Virtual Machine"),
  valueAzureKubernetesService("Azure Kubernetes Service"),
  valueAWSVMWareVirtualMachine("AWS VMWare Virtual Machine"),
  valueAWSKubernetesService("AWS Kubernetes Service"),
  valueGCPVMWareVirtualMachine("GCP VMWare Virtual Machine"),
  valueGCPKubernetesService("GCP Kubernetes Service"),
  valueContainer("Container"),
  valueVirtualMachine("Virtual Machine"),
  valuePhysicalServer("Physical Server"),
  valueAWSVirtualMachine("AWS Virtual Machine"),
  valueGCPVirtualMachine("GCP Virtual Machine"),
  valueOther("Other");

  const HostType(this.wireValue);
  @override
  final String wireValue;

  static HostType fromValue(String value) {
    for (final item in HostType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostType value: $value');
  }
}
