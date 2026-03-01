// ignore_for_file: unused_element, unnecessary_cast


/// Defines the resource properties.
class Checkpoint {
  /// Gets ID of the checkpoint.
  final String? checkpointID;
  /// Gets description of the checkpoint.
  final String? description;
  /// Gets name of the checkpoint.
  final String? name;
  /// Gets ID of parent of the checkpoint.
  final String? parentCheckpointID;

  /// Creates a new [Checkpoint].
  /// [checkpointID] Gets ID of the checkpoint.
  /// [description] Gets description of the checkpoint.
  /// [name] Gets name of the checkpoint.
  /// [parentCheckpointID] Gets ID of parent of the checkpoint.
  Checkpoint({
    this.checkpointID,
    this.description,
    this.name,
    this.parentCheckpointID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpointID': ?checkpointID,
      'description': ?description,
      'name': ?name,
      'parentCheckpointID': ?parentCheckpointID,
    };
  }

  factory Checkpoint.fromMap(Map<String, dynamic> map) {
    return Checkpoint(
      checkpointID: map['checkpointID'] == null ? null : map['checkpointID'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parentCheckpointID: map['parentCheckpointID'] == null ? null : map['parentCheckpointID'] as String,
    );
  }
}

