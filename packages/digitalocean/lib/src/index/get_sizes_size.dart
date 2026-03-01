// ignore_for_file: unused_element, unnecessary_cast


class GetSizesSize {
  /// This represents whether new Droplets can be created with this size.
  final bool available;
  /// The amount of disk space set aside for Droplets of this size. The value is measured in gigabytes.
  final int disk;
  /// The amount of RAM allocated to Droplets created of this size. The value is measured in megabytes.
  final int memory;
  /// The hourly cost of Droplets created in this size as measured hourly. The value is measured in US dollars.
  final double priceHourly;
  /// The monthly cost of Droplets created in this size if they are kept for an entire month. The value is measured in US dollars.
  final double priceMonthly;
  /// List of region slugs where Droplets can be created in this size.
  final List<String> regions;
  /// A human-readable string that is used to uniquely identify each size.
  final String slug;
  /// The amount of transfer bandwidth that is available for Droplets created in this size. This only counts traffic on the public interface. The value is given in terabytes.
  final double transfer;
  /// The number of CPUs allocated to Droplets of this size.
  final int vcpus;

  /// Creates a new [GetSizesSize].
  /// [available] This represents whether new Droplets can be created with this size.
  /// [disk] The amount of disk space set aside for Droplets of this size. The value is measured in gigabytes.
  /// [memory] The amount of RAM allocated to Droplets created of this size. The value is measured in megabytes.
  /// [priceHourly] The hourly cost of Droplets created in this size as measured hourly. The value is measured in US dollars.
  /// [priceMonthly] The monthly cost of Droplets created in this size if they are kept for an entire month. The value is measured in US dollars.
  /// [regions] List of region slugs where Droplets can be created in this size.
  /// [slug] A human-readable string that is used to uniquely identify each size.
  /// [transfer] The amount of transfer bandwidth that is available for Droplets created in this size. This only counts traffic on the public interface. The value is given in terabytes.
  /// [vcpus] The number of CPUs allocated to Droplets of this size.
  GetSizesSize({
    required this.available,
    required this.disk,
    required this.memory,
    required this.priceHourly,
    required this.priceMonthly,
    required this.regions,
    required this.slug,
    required this.transfer,
    required this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': available,
      'disk': disk,
      'memory': memory,
      'priceHourly': priceHourly,
      'priceMonthly': priceMonthly,
      'regions': regions,
      'slug': slug,
      'transfer': transfer,
      'vcpus': vcpus,
    };
  }

  factory GetSizesSize.fromMap(Map<String, dynamic> map) {
    return GetSizesSize(
      available: map['available'] as bool,
      disk: map['disk'] as int,
      memory: map['memory'] as int,
      priceHourly: map['priceHourly'] as double,
      priceMonthly: map['priceMonthly'] as double,
      regions: (map['regions'] as List).cast<String>(),
      slug: map['slug'] as String,
      transfer: map['transfer'] as double,
      vcpus: map['vcpus'] as int,
    );
  }
}

