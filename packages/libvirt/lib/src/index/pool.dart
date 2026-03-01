import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_args.dart';
import 'pool_features.dart';
import 'pool_refresh.dart';
import 'pool_source.dart';
import 'pool_target.dart';
import '../internal/package_registration.dart' as package_registration;

/// Storage pool for managing storage volumes
class Pool extends pulumi.CustomResource {
  /// Configures the amount of storage allocated to the pool, determining capacity usage.
  late final pulumi.Output<double> allocation;
  /// Specifies the unit type for the pool's allocated storage, defining measurement standards.
  late final pulumi.Output<String?> allocationUnit;
  /// Indicates the amount of available storage within the pool for new allocations.
  late final pulumi.Output<double> available;
  /// Sets the unit type for measuring available storage within the pool.
  late final pulumi.Output<String?> availableUnit;
  /// Configures the total capacity of the storage pool, defining its maximum size.
  late final pulumi.Output<double> capacity;
  /// Specifies the unit type for measuring the total capacity of the storage pool.
  late final pulumi.Output<String?> capacityUnit;
  /// Defines optional features supported by the storage pool, enhancing functional capabilities.
  late final pulumi.Output<PoolFeatures?> features;
  /// Sets the unique name for the storage pool, required for identification on the host.
  late final pulumi.Output<String> name;
  /// Controls the refresh behavior of the storage pool and associated volumes.
  late final pulumi.Output<PoolRefresh?> refresh;
  /// Source location for the storage pool
  late final pulumi.Output<PoolSource?> source;
  /// Target path and permissions for the storage pool
  late final pulumi.Output<PoolTarget?> target;
  /// Specifies the type of the storage pool being defined.
  late final pulumi.Output<String> type;
  /// Sets the universally unique identifier for the storage pool.
  late final pulumi.Output<String> uuid;

  /// Creates a new [Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pool]. {@macro pulumi_index_pool_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pool(
    String name, {
    PoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/pool:Pool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
        ) {
    this.allocation = registerOutput<double>('allocation');
    this.allocationUnit = registerOutput<String?>('allocationUnit');
    this.available = registerOutput<double>('available');
    this.availableUnit = registerOutput<String?>('availableUnit');
    this.capacity = registerOutput<double>('capacity');
    this.capacityUnit = registerOutput<String?>('capacityUnit');
    this.features = registerOutput<PoolFeatures?>('features');
    this.name = registerOutput<String>('name');
    this.refresh = registerOutput<PoolRefresh?>('refresh');
    this.source = registerOutput<PoolSource?>('source');
    this.target = registerOutput<PoolTarget?>('target');
    this.type = registerOutput<String>('type');
    this.uuid = registerOutput<String>('uuid');
  }
}
