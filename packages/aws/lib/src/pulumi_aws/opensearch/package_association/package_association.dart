import 'package:pulumi/pulumi.dart' as pulumi;
import 'package_association_args.dart';

/// Manages an AWS Opensearch Package Association.
///
/// ## Example Usage
///
/// ### Basic Usage
class PackageAssociation extends pulumi.CustomResource {
  /// Name of the domain to associate the package with.
  late final pulumi.Output<String> domainName;

  /// Internal ID of the package to associate with a domain.
  late final pulumi.Output<String> packageId;
  late final pulumi.Output<String> referencePath;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  PackageAssociation(
    String name, {
    PackageAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/packageAssociation:PackageAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.packageId = registerOutput<String>('packageId');
    this.referencePath = registerOutput<String>('referencePath');
    this.region = registerOutput<String>('region');
  }
}
